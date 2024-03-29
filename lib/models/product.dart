class Product {
  final int? id, price;
  final String? title, subTitle, description, image;

  Product(
      {this.id,
        this.price,
        this.title,
        this.subTitle,
        this.description,
        this.image});
}

// list of products
List<Product> products = [
  Product(
    id: 1,
    price: 59,
    title: "سماعات ابل اير بودز مع علبة شحن",
    subTitle: "جودة صوت عالية",
    image: "images/airpod.png",
    description:
    "سماعات ابل ايربودز مع علبة شحن تأخذك في تجربة صوتية محسنة ورائعة. استمتع بالمحتوى المفضل لديك على أكمل وجه، حيث توفر صوتًا واضحًا للغاية. سماعات ابل اللاسلكية سهلة الاستخدام، فبإعداد بسيط بضغطة واحدة، ستكون جاهزة للاستخدام. بفضل خاصية سيري يمكنك ضبط مستوى الصوت وتغيير الأغنية أو حتى إجراء مكالماتك بشكل أكثر راحة. هل تسافر في ذهنك؟ إذًا فإن سماعات ايربودز هذه هي رفيقك المثالي للسفر، حيث تبقيك مستمتعًا لفترة طويلة بشحنة واحدة. بالإضافة إلى ذلك، فمع الشحن السريع، لن تضطر إلى الانتظار لفترة طويلة قبل الاستماع إلى أغانيك المفضلة. سماعات ايربودز تعمل بشريحة سماعات رأس اتش 1 من ابل وأجهزة الاستشعار المتعددة والمتقدمة تقنيًا، فهي سماعات فائقة للغاية عندما يتعلق الأمر بتوصيل الصوت السحري. المزايا الرئيسية: تقنية بلوتوث، اتصال لاسلكي، إعداد سهل لجميع أجهزة ابل الخاصة بك، علبة شحن بتقنية الشحن السريع، تبديل سهل بين الأجهزة.",
  ),
  Product(
    id: 2,
    price: 1099,
    title: "ابل ايفون 13 برو ماكس مع فيس تايم - 256 جيجا ، 6 جيجا رام ، الجيل الرابع ال تي اي ، ذهبي",
    subTitle: "وأصبح للموبايل قوة",
    image: "images/ipone.png",
    description:
    "آيفون 13 Pro Max أكبر تحديث لنظام كاميرا برو على الإطلاق. شاشة سوبر ريتينا XDR مع تقنية برو موشن لتوفير خاصية لمس سريعة وفائقة الاستجابة. شريحة بيونيك A15 فائقة السرعة. تصميم متين والبطارية الأطول عمرا بين بطاريات آيفون.",
  ),
  Product(
    id: 3,
    price: 39,
    title: "نظارات ثلاثية الأبعاد",
    subTitle: "لنقلك للعالم الافتراضي",
    image: "images/class.png",
    description:
    "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.",
  ),
  Product(
    id: 4,
    price: 56,
    title: "سماعات",
    subTitle: "لساعات استماع طويلة",
    image: "images/headset.png",
    description:
    "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.",
  ),
  Product(
    id: 5,
    price: 68,
    title: "مسجل صوت",
    subTitle: "سجل اللحظات المهمة حولك",
    image: "images/speaker.png",
    description:
    "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.",
  ),
  Product(
    id: 6,
    price: 39,
    title: "كاميرات كمبيوتر",
    subTitle: "بجودة ودقة صورة عالية",
    image: "images/camera.png",
    description:
    "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.",
  ),
];