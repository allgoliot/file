#include <libcec/cecc.h>

#include <signal.h>
#include <stdio.h>
#include <unistd.h>


static int g_bExit=0;
// Fonction appelée lorsque le programme reçoit un signal SIGINT
// => provoque l'arrêt de la boucle principale du main()
static void sighandler(int iSignal)
{
    printf("Capture du signal : %d - sortie\n", iSignal);
    g_bExit = 1;
}

// Fonction pour afficher les messages de journalisation de libcec
static void cb_cec_log_message(void* lib, const cec_log_message* message)
{
   (void)lib;

   const char* strLevel;
   switch (message->level)
   {
       case CEC_LOG_ERROR:
           strLevel = "ERROR:   ";
           break;
       case CEC_LOG_WARNING:
           strLevel = "WARNING: ";
           break;
       case CEC_LOG_NOTICE:
           strLevel = "NOTICE:  ";
           break;
       case CEC_LOG_TRAFFIC:
           strLevel = "TRAFFIC: ";
           break;
       case CEC_LOG_DEBUG:
           strLevel = "DEBUG:   ";
           break;
       default:
           break;
    }

    printf("%s[%lld]\t%s\n", strLevel, message->time, message->message);
}

// Fonction appelée à chaque appui sur une touche de la télécommande
static void keyPressHandler(void* lib, const cec_keypress* key)
{
    (void)lib;

    printf("Appui touche détecté : %d pendant %d\n",key->keycode,key->duration);
}

// Callbacks (bien faire attention que les callbacks non utilisés soient à NULL)
static ICECCallbacks        g_callbacks = {
//    .logMessage           = cb_cec_log_message,
    .logMessage           = NULL,
    .keyPress             = keyPressHandler,
    .commandReceived      = NULL,
    .configurationChanged = NULL,
    .alert                = NULL,
    .menuStateChanged     = NULL,
    .sourceActivated      = NULL
};

int main()
{
    // Installation de notre gestionnaire de signaux
    if (signal(SIGINT, sighandler) == SIG_ERR)
    {
        printf("Impossible de placer le gestionnaire de signaux\n");
        return -1;
    }

    libcec_configuration g_config;
    libcec_connection_t g_iface;
    char strPort[10];
    
    // Configuration de notre instance de libcec
    libcec_clear_configuration(&g_config);
    g_config.clientVersion        = LIBCEC_VERSION_CURRENT;
    g_config.bActivateSource      = 0;
    g_config.callbacks            = &g_callbacks;
    snprintf(g_config.strDeviceName, sizeof(g_config.strDeviceName), "libCEC4");
    g_config.deviceTypes.types[0] = CEC_DEVICE_TYPE_RECORDING_DEVICE;
    
    // Initialisation
    g_iface = libcec_initialise(&g_config);
    if (g_iface == NULL)
    {
        printf("Impossible d'initialiser libCEC\n");
        return -1;
    }
    
    // Appel obligatoire après l'initialisation de la bibliothèque pour initialiser la machine hôte
    libcec_init_video_standalone(g_iface);
    
    // Recherche du périphérique de connexion
    cec_adapter devices[10];
    int8_t iDevicesFound;
    printf("Autodétection périphérique : ");

    iDevicesFound = libcec_find_adapters(g_iface, devices, sizeof(devices) / sizeof(devices), NULL);
    if (iDevicesFound <= 0)
    {
        printf("ECHEC\n");
        libcec_destroy(g_iface);
        return 1;
    }
    else
    {
        printf("\n Chemin:     %s\n Port:       %s\n\n", devices[0].path, devices[0].comm);
        strcpy(strPort, devices[0].comm);
    }

    // Ouverture de la connexion
    printf("ouverture d'une connexion à l'adaptateur CEC...\n");
    if (!libcec_open(g_iface, strPort, 5000))
    {
        printf("impossible d'ouvrir le périphérique avec le port %s\n", strPort);
        libcec_destroy(g_iface);
        return 1;
    }
    
    while (!g_bExit)
    {
        usleep(50000);
    }

    // Nettoyage (fermeture de la bibliothèque)
    libcec_destroy(g_iface);

    return 0;
}