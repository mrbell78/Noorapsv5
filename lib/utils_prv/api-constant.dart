class ApiConstant{


  static String SERVER1 = "https://staging.tradingly.ai/api/v1/";
  static String SERVER2= "https://tradingly.ai/api/v2/";

  // authentication end poiong
  static String SERVERAUTH= "https://tradingly.ai/api/v2/";


  static String GETCOUNTRY= "${SERVER1}configs/countries";
  static String USERREGISTER= "${SERVER1}auth/register";
  static String USERLOGIN= "${SERVER1}auth/login";
  static String SENDVCODE= "${SERVER1}user/request-otp";
  static String VERIFYUSER= "${SERVER1}auth/verify";
  static String NOTICEBOARD= "${SERVER1}user/notifications";
  static String UPLOADPROFILE= "${SERVER1}user/profile";
  static String USERPROFILEGET= "${SERVER1}user/profile";
  static String USERLOGOUT= "${SERVER1}auth/logout";
  static String ROBOTINFO= "${SERVER1}robotic/info";
  static String GLOBALNOTICE= "${SERVER1}configs/notices";
  static String GLOBALSETTINGS= "${SERVER1}configs/settings";
  static String SUBSCRIBEBOT= "${SERVER1}robotic/subscribe";
  static String SLIDER= "${SERVER1}configs/sliders";
  static String BOTLIST= "${SERVER1}robotic/bots";
  static String JOINBOT= "${SERVER1}robotic/bot/join";
  static String LEAVEBOT= "${SERVER1}robotic/bot/leave";
  static String EXCHANGES= "${SERVER1}exchanges";
  static String BINANCEBINDING= "${SERVER1}binance/bind";
  static String ASSETSINFO= "${SERVER1}wallet/assets";
  static String WITHDRAW= "${SERVER1}wallet/withdraw";


  //for signal module

  static String SIGNALALL= "${SERVER1}signal/groups";
  static String FOLLOW= "${SERVER1}signal/groups/follow";
  static String RATTING= "${SERVER1}signal/groups/rating";
  static String DEFAULTPACKAGE= "${SERVER1}signal/packages";
  static String CREATESIGNAL= "${SERVER1}signal/groups";




}