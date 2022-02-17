/// @description BANNER
globalvar BANNER_ID;
global.BANNER_ID = "ca-app-pub-3011000500167349/6824000910";

GoogleMobileAds_Init(global.BANNER_ID);
GoogleMobileAds_AddBanner(global.BANNER_ID, GoogleMobileAds_Banner);

GoogleMobileAds_MoveBanner(0,0);

