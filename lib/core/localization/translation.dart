import 'package:get/get.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'fr': {
          //choose lang
          "choose": "Choisissez",
          "your_lang": "votre langue",
          //choose lang

          // onboarding
          'go_home': "Aller à la page d'accueil",
          'skip': 'Passer',
          'finish': 'Terminer',
          'next': 'Suivant',

          //slider list
          'invite_friends': "INVITER DES AMIS",
          'invite_friends_text':
              "Créez un espace de soirée cinéma personnel\n ou acceptez les invitations de vos amis",
          "find_movie": "TROUVER UN FILM",
          "find_movie_text":
              "Regardez et trouvez des films qui \n vous remettent de bonne humeur",
          "real_time": "TEMPS RÉEL",
          "real_time_text":
              "Informations sur les films et la télévision et \n mises à jour de la bande-annonce du film",
          "offline": "HORS LIGNE",
          "offline_text":
              "Regardez vos films préférés n'importe où \n sans connexion Internet",
          // onboarding

          //auth
          'signin': 'Se Connecter',
          'signup': "S'Inscrire",
          'forgotpassword': "Mot de passe oublié",
          'resetpassword': "Réinitialiser le mot de passe",

          //fields
          'email': "Email",
          'password': "Mot de passe",
          'confirm_password': "Confirmer le mot de passe",

          'name': "Nom",
          'phone': "Téléphone",
          'address': "Adresse",
          "new_password": "Nouveau Mot de passe",
          'confirm_new_password': "Confirmer le nouveau mot de passe",

          "enter_your_email": "Entrez votre adresse e-mail",
          "enter_your_password": "Entrez votre mot de passe",
          "re_enter_your_password": "Entrez à nouveau votre mot de passe",
          "enter_your_name": "Entrez votre nom",
          "enter_your_phone": "Entrez votre téléphone",
          "enter_your_address": "Entrez votre adresse",
          "re_enter_new_password": "Confirmez votre nouveau mot de passe",

          //validation
          "invalid_name": "Veuillez entrer un nom valide",
          "invalid_email": "Veuillez entrer un email valide",
          "invalid_password": "Veuillez entrer un mot de passe plus fort",
          "invalid_phone": "Veuillez entrer un numéro de téléphone valide",
          "cant_be_less_than": "Ce champ ne peut pas être inférieur à",
          "cant_be_greater_than": "Ce champ ne peut pas être supérieur à",
          "is_required": "Ce champ est obligatoire",

          //fields

          "welcome_back": "Bon Retour",
          "signin_text":
              "Connectez-vous avec votre adresse électronique et votre mot de passe ou continuez avec les médias sociaux.",

          "forgot_password": "Mot de passe oublié ?",
          "forgot_password_text":
              "Ne vous inquiétez pas ! Cela arrive. Veuillez saisir l'adresse électronique associée à votre compte.",
          "enter_verfication_code": "Entrez le code de vérification",
          "enter_verfication_code_text":
              "Un code à 5 chiffres a été envoyé à votre adresse e-mail",
          "continue": "Continuer",
          "dont_have_account": "vous n'avez pas de compte ?",
          "already_have_account": "vous avez déjà un compte ?",

          "agree_term_condition":
              "En continuant, vous confirmez que vous êtes d'accord avec nos Termes et Conditions.",
          "register_account": "Créer un compte",
          "signup_text":
              "Complétez vos coordonnées ou continuez avec les médias sociaux",

          "password_reset_successfully":
              "Le mot de passe est réinitialisé avec succès",
          "back_to_login": "Retour à la page d'accueil",
          "signup_successfully": "Compte créé avec succès",
          "congrats": "félicitations",
          //auth
        },
        'en': {
          //choose lang
          "choose": "Choose",
          "your_lang": "your language",
          //choose lang

          // onboarding
          'go_home': 'Go Home',
          'skip': 'Skip',
          'finish': 'Finish',
          'next': 'Next',
          //slider list
          'invite_friends': "INVITE FRIENDS",
          'invite_friends_text':
              "Create personal movie night space or \n accept your friends invitations",
          "find_movie": "FIND MOVIE",
          "find_movie_text":
              "Watch and find movies that bring \n your mood back",
          "real_time": "REAL TIME",
          "real_time_text":
              "Movies & TV information and \n updates movie trailer",
          "offline": "OFFLINE",
          "offline_text":
              "Watch your favorite movies anywhere \n without an internet connection",

          // onboarding

          //auth
          'signin': 'Sign In',
          'signup': 'Sign Up',
          //fields
          'email': "Email",
          'password': "Password",
          'confirm_password': "Confirm Password",
          'name': "Name",
          'phone': "Phone Number",
          'address': "Address",
          "new_password": "New Password",
          'confirm_new_password': "Confirm New Password",

          "enter_your_email": "Enter your email address",
          "enter_your_password": "Enter your password",
          "re_enter_your_password": "Re-enter your password",
          "enter_your_name": "Enter your name",
          "enter_your_phone": "Enter your phone",
          "enter_your_address": "Enter your address",
          "re_enter_new_password": "Confirm your New Password",
          //validation
          "invalid_name": "Please enter a valid name",
          "invalid_email": "Please enter a valid email",
          "invalid_password": "Please enter a stronger password",
          "invalid_phone": "Please enter a valid phone number",
          "cant_be_less_than": "This field can't be less than",
          "cant_be_greater_than": "This field can't be greater than",
          "is_required": "This field is required",

          //fields
          "welcome_back": "Welcome Back",
          "signin_text":
              "Sign in with your email and password \n or continue with social media",
          "forgot_password": "Forgot Password?",
          "forgot_password_text":
              "Don't worry! It happens. Please enter the email address associated with your account.",
          "enter_verfication_code": "Enter verification code",
          "enter_verfication_code_text":
              "A 5 digit code has been sent to your email",
          "continue": "Continue",
          "dont_have_account": "You don't have an account?",
          "already_have_account": "You don't have an account?",
          "agree_term_condition":
              "By continuing you confirm that you agree with our Term and Condition",
          "register_account": "Register Account",
          "signup_text": "Complete your details or continue with social media",
          "password_reset_successfully": "Password is successfully reset",
          "signup_successfully": "Account created successfully",
          "congrats": "congratulations",

          "back_to_login": "Return to home page",
          'resetpassword': "Reset Password",

          //auth
        },
        'ar': {
          //choose lang
          "choose": "اختر",
          "your_lang": "لغتك",
          //choose lang

          // onboarding
          'go_home': 'الصفحة الرئيسية',
          'skip': 'تخطي',
          'finish': 'إنهاء',
          'next': 'التالي',
          //slider list
          'invite_friends': "دعوة أصدقاء",
          'invite_friends_text':
              "أنشئ مساحة ليلية خاصة بالأفلام أو \n اقبل دعوات أصدقائك",
          "find_movie": "البحث عن فيلم",
          "find_movie_text": "شاهد وابحث عن الأفلام التي تعيد مزاجك",
          "real_time": "آنية",
          "real_time_text":
              "معلومات الأفلام والتلفزيون \n وتحديث المقطع الدعائي للفيلم",
          "offline": "بدون انترنت",
          "offline_text":
              "شاهد أفلامك المفضلة في أي مكان \n بدون اتصال بالإنترنت",
          // onboarding

          //auth
          'signin': 'تسجيل الدخول',
          'signup': "إنشاء حساب",

          //fields
          'email': "البريد الإلكتروني",
          'password': "كلمه السر",
          'confirm_password': "أكد كلمة المرور",
          'name': "الاسم",
          'phone': "رقم الهاتف",
          'address': "العنوان",
          "new_password": "كلمة المرور الجديدة",
          'confirm_new_password': "تأكيد كلمة المرور الجديدة",

          "enter_your_email": "أدخل عنوان البريد الإلكتروني الخاص بك",
          "enter_your_password": "أدخل كلمة المرور",
          "re_enter_your_password": "أعد إدخال كلمة المرور",
          "enter_your_name": "أدخل اسمك",
          "enter_your_phone": "أدخل هاتفك",
          "enter_your_address": "أدخل عنوانك",
          "re_enter_new_password": "تأكيد كلمة المرور الجديدة",
          //validation
          "invalid_name": "الرجاء إدخال اسم صالح",
          "invalid_email": "الرجاء إدخال بريد إلكتروني صالح",
          "invalid_password": "الرجاء إدخال كلمة مرور أقوى",
          "invalid_phone": "الرجاء إدخال رقم هاتف صالح",
          "cant_be_less_than": "لا يمكن أن يكون هذا الحقل أقل من",
          "cant_be_graduate_than": "لا يمكن أن يكون هذا الحقل أكبر من",
          "is_required": "هذا الحقل مطلوب",

          //fields
          "welcome_back": "مرحبًا بعودتك",
          "signin_text":
              "قم بتسجيل الدخول باستخدام بريدك الإلكتروني وكلمة المرور أو تابع وسائل التواصل الاجتماعي",
          "forgot_password": "هل نسيت كلمة السر ؟",
          "forgot_password_text":
              "لا تقلق! يحدث ذلك. الرجاء إدخال عنوان البريد الإلكتروني المرتبط بحسابك.",
          "enter_verfication_code": "أدخل رمز التحقق",
          "enter_verfication_code_text":
              "تم إرسال رمز مكون من 5 أرقام إلى بريدك الإلكتروني",
          "continue": "واصل",
          "dont_have_account": "لا يوجد لديك حساب ؟",
          "already_have_account": "هل لديك حساب ؟",

          "agree_term_condition":
              "من خلال المتابعة ، فإنك تؤكد موافقتك على البنود والشروط الخاصة بنا.",
          "register_account": "تسجيل حساب",
          "signup_text":
              "أكمل التفاصيل الخاصة بك أو تابع بوسائل التواصل الاجتماعي",
          'resetpassword': "أعد تعيين كلمة المرور",

          "password_reset_successfully": "تم إعادة تعيين كلمة المرور بنجاح",
          "back_to_login": "العودة إلى الصفحة الرئيسية",
          "signup_successfully": "تم إنشاء الحساب بنجاح",
          "congrats": "تهانينا",

          //auth
        },
      };
}
