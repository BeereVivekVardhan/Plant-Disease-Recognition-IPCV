function info = diseaseInfo(label,lang)
if nargin < 2
    lang = "en";
end
label = lower(string(label));
label = strrep(label," ","_");
isLang = @(l) strcmp(lang,l);
info.Description = "";
info.Remedy = "";
info.Note = "";
switch label

case "healthy"

if isLang("hi")
info.Description="पत्ता पूरी तरह स्वस्थ है और इसमें किसी प्रकार का संक्रमण, धब्बा या विकृति नहीं है। यह पौधे की अच्छी वृद्धि, संतुलित पोषण और उचित देखभाल को दर्शाता है। स्वस्थ पत्तियां प्रकाश संश्लेषण की प्रक्रिया को सही ढंग से करती हैं जिससे पौधे का विकास बेहतर होता है।";
info.Remedy="कोई उपचार आवश्यक नहीं है। पौधे को नियमित रूप से पानी दें, संतुलित उर्वरक का उपयोग करें और पर्याप्त धूप उपलब्ध कराएं।";
info.Note="भविष्य में रोग से बचाव के लिए समय-समय पर निरीक्षण करें और खेत की स्वच्छता बनाए रखें।";

elseif isLang("kn")
info.Description="ಎಲೆ ಸಂಪೂರ್ಣ ಆರೋಗ್ಯಕರವಾಗಿದೆ ಮತ್ತು ಯಾವುದೇ ರೋಗದ ಲಕ್ಷಣಗಳಿಲ್ಲ. ಇದು ಉತ್ತಮ ಬೆಳವಣಿಗೆ ಮತ್ತು ಸಮತೋಲನ ಪೋಷಕಾಂಶವನ್ನು ಸೂಚಿಸುತ್ತದೆ. ಆರೋಗ್ಯಕರ ಎಲೆಗಳು ಬೆಳಕಿನ ಸಂಶ್ಲೇಷಣೆಯನ್ನು ಸರಿಯಾಗಿ ನಡೆಸುತ್ತವೆ.";
info.Remedy="ಯಾವುದೇ ಚಿಕಿತ್ಸೆ ಅಗತ್ಯವಿಲ್ಲ. ಸರಿಯಾದ ನೀರು, ಗೊಬ್ಬರ ಮತ್ತು ಬೆಳಕನ್ನು ಒದಗಿಸಿ.";
info.Note="ನಿಯಮಿತವಾಗಿ ಪರಿಶೀಲಿಸಿ ಮತ್ತು ಪರಿಸರವನ್ನು ಸ್ವಚ್ಛವಾಗಿಡಿ.";

elseif isLang("te")
info.Description="ఆకు పూర్తిగా ఆరోగ్యంగా ఉంది మరియు ఎటువంటి వ్యాధి లక్షణాలు లేవు. ఇది మంచి మొక్క ఎదుగుదలను మరియు సరైన పోషణను సూచిస్తుంది.";
info.Remedy="చికిత్స అవసరం లేదు. సరైన నీరు, ఎరువు మరియు సూర్యకాంతి ఇవ్వండి.";
info.Note="మొక్కను తరచుగా పరిశీలించండి.";

else
info.Description="The leaf is completely healthy with no visible symptoms of disease, discoloration, or infection. It indicates proper plant growth, balanced nutrition, and good environmental conditions. Healthy leaves perform photosynthesis efficiently.";
info.Remedy="No treatment is required. Maintain proper irrigation, balanced fertilization, and adequate sunlight.";
info.Note="Regular monitoring helps detect any disease early.";
end

case "alternaria_leaf_spot"

if isLang("hi")
info.Description="अल्टरनेरिया लीफ स्पॉट एक फफूंद जनित रोग है जो पत्तियों पर गहरे भूरे गोल धब्बे बनाता है। समय के साथ ये धब्बे बढ़कर पूरे पत्ते को प्रभावित कर सकते हैं और पौधे की प्रकाश संश्लेषण क्षमता को कम कर देते हैं।";
info.Remedy="मैनकोजेब या क्लोरोथालोनिल जैसे फफूंदनाशकों का छिड़काव करें। संक्रमित पत्तियों को हटाकर खेत की स्वच्छता बनाए रखें।";
info.Note="अधिक नमी और खराब वायु संचार इस रोग को तेजी से फैलाते हैं।";

elseif isLang("kn")
info.Description="ಇದು ಶಿಲೀಂಧ್ರ ರೋಗವಾಗಿದ್ದು ಎಲೆಗಳ ಮೇಲೆ ಕಂದು ವೃತ್ತಾಕಾರದ ಕಲೆಗಳನ್ನು ಉಂಟುಮಾಡುತ್ತದೆ. ಇದು ಬೆಳವಣಿಗೆಯನ್ನು ಕಡಿಮೆ ಮಾಡುತ್ತದೆ.";
info.Remedy="ಮ್ಯಾಂಕೋಜೆಬ್ ಅಥವಾ ಫಂಗಿಸೈಡ್ ಬಳಸಿ.";
info.Note="ತೇವ ಹೆಚ್ಚಾದರೆ ರೋಗ ಹೆಚ್ಚು ಹರಡುತ್ತದೆ.";

elseif isLang("te")
info.Description="ఇది ఫంగస్ వ్యాధి, ఇది ఆకులపై గోధుమ వలయాకార మచ్చలు కలిగిస్తుంది మరియు మొక్క ఎదుగుదలను తగ్గిస్తుంది.";
info.Remedy="మాంకోజెబ్ లేదా ఫంగిసైడ్ వాడండి.";
info.Note="తేమ ఎక్కువైతే వ్యాధి పెరుగుతుంది.";

else
info.Description="Alternaria leaf spot is a fungal disease that causes dark circular lesions with concentric rings. It spreads rapidly under humid conditions and reduces plant productivity.";
info.Remedy="Spray fungicides such as Mancozeb or Chlorothalonil and remove infected leaves.";
info.Note="Avoid high humidity and overcrowding.";
end

case "leaf_spot"

if isLang("hi")
info.Description="लीफ स्पॉट रोग पत्तियों पर छोटे-छोटे धब्बे बनाता है जो समय के साथ बड़े हो जाते हैं और पत्तियों को नुकसान पहुंचाते हैं।";
info.Remedy="कॉपर आधारित फंगीसाइड का उपयोग करें और संक्रमित पत्तियों को हटा दें।";
info.Note="संतुलित पोषण और उचित सिंचाई बनाए रखें।";

elseif isLang("kn")
info.Description="ಎಲೆ ಚುಕ್ಕೆ ರೋಗವು ಎಲೆಗಳ ಮೇಲೆ ಕಲೆಗಳನ್ನು ಉಂಟುಮಾಡುತ್ತದೆ.";
info.Remedy="ಫಂಗಿಸೈಡ್ ಬಳಸಿ.";
info.Note="ಸಂಕ್ರಮಿತ ಎಲೆಗಳನ್ನು ತೆಗೆದುಹಾಕಿ.";

elseif isLang("te")
info.Description="ఆకు మచ్చలు వ్యాధి ఆకులపై మచ్చలు కలిగిస్తుంది.";
info.Remedy="ఫంగిసైడ్ వాడండి.";
info.Note="సంఖ్య తగ్గించండి.";

else
info.Description="Leaf spot disease causes small dark lesions that enlarge and damage the leaf tissue.";
info.Remedy="Apply fungicide and remove infected leaves.";
info.Note="Maintain proper plant hygiene.";
end

case "rust"

if isLang("hi")
info.Description="रस्ट रोग पत्तियों पर नारंगी या भूरे पाउडर जैसे धब्बे बनाता है जो पौधे की उत्पादकता को कम करता है।";
info.Remedy="प्रोपिकोनाजोल जैसे फंगीसाइड का उपयोग करें।";
info.Note="यह रोग आर्द्र वातावरण में तेजी से फैलता है।";

elseif isLang("kn")
info.Description="ರಸ್ಟ್ ರೋಗವು ಎಲೆಗಳ ಮೇಲೆ ಕಿತ್ತಳೆ ಅಥವಾ ಕಂದು ಕಲೆಗಳನ್ನು ಉಂಟುಮಾಡುತ್ತದೆ.";
info.Remedy="ಫಂಗಿಸೈಡ್ ಬಳಸಿ.";
info.Note="ತೇವ ಪರಿಸರದಲ್ಲಿ ಹೆಚ್ಚು ಹರಡುತ್ತದೆ.";

elseif isLang("te")
info.Description="రస్ట్ వ్యాధి ఆకులపై నారింజ మచ్చలు కలిగిస్తుంది.";
info.Remedy="ఫంగిసైడ్ వాడండి.";
info.Note="తేమ ఉన్న ప్రదేశాల్లో వస్తుంది.";

else
info.Description="Rust disease produces orange or brown powdery spots that reduce plant vigor and yield.";
info.Remedy="Apply fungicides such as Propiconazole.";
info.Note="Common in humid conditions.";
end

case "rosette"

if isLang("hi")
info.Description="रोसेट रोग मुख्य रूप से ग्राउंडनट (मूंगफली) में पाया जाता है और यह वायरस जनित रोग है। इसमें पत्तियां छोटी, मुड़ी हुई और गुच्छे के रूप में दिखाई देती हैं, जिससे पौधा बौना हो जाता है और उत्पादन बहुत कम हो जाता है।";
info.Remedy="संक्रमित पौधों को तुरंत हटाएं। रोग फैलाने वाले कीट (एफिड) को नियंत्रित करने के लिए कीटनाशक का छिड़काव करें।";
info.Note="स्वस्थ बीज का उपयोग करें और खेत में कीट नियंत्रण बनाए रखें।";

elseif isLang("kn")
info.Description="ರೋಸೆಟ್ ರೋಗವು ಕಡಲೆಕಾಯಿ ಸಸ್ಯದಲ್ಲಿ ಕಾಣುವ ವೈರಸ್ ರೋಗವಾಗಿದೆ. ಎಲೆಗಳು ಸಣ್ಣದಾಗಿ ಗುಚ್ಛವಾಗಿ ಬೆಳೆಯುತ್ತವೆ ಮತ್ತು ಸಸ್ಯದ ಬೆಳವಣಿಗೆ ಕಡಿಮೆಯಾಗುತ್ತದೆ.";
info.Remedy="ಸಂಕ್ರಮಿತ ಸಸ್ಯಗಳನ್ನು ತೆಗೆದುಹಾಕಿ ಮತ್ತು ಕೀಟ ನಿಯಂತ್ರಣಕ್ಕಾಗಿ ಔಷಧಿ ಬಳಸಿ.";
info.Note="ಆಫಿಡ್ ಕೀಟಗಳನ್ನು ನಿಯಂತ್ರಿಸುವುದು ಮುಖ್ಯ.";

elseif isLang("te")
info.Description="రోసెట్ వ్యాధి గ్రౌండ్నట్ మొక్కల్లో కనిపించే వైరస్ వ్యాధి. ఆకులు చిన్నగా గుంపులుగా మారి మొక్క ఎదుగుదల తగ్గుతుంది.";
info.Remedy="సంఖ్య ఉన్న మొక్కలను తొలగించి, పురుగు నియంత్రణ చేయండి.";
info.Note="ఆఫిడ్ పురుగులను నియంత్రించాలి.";

else
info.Description="Rosette disease is a viral disease commonly affecting groundnut plants. It causes stunted growth with clustered, small, and distorted leaves, significantly reducing yield.";
info.Remedy="Remove infected plants immediately and control aphid vectors using insecticides.";
info.Note="Use disease-free seeds and maintain pest control.";
end

case "early_blight"

if isLang("hi")
info.Description="अर्ली ब्लाइट पत्तियों पर गोल धब्बे बनाता है जिनमें छल्ले जैसे पैटर्न होते हैं। यह पौधे की वृद्धि को प्रभावित करता है।";
info.Remedy="मैनकोजेब का नियमित छिड़काव करें और संक्रमित पत्तियों को हटाएं।";
info.Note="गर्म और आर्द्र मौसम में यह रोग तेजी से फैलता है।";

elseif isLang("kn")
info.Description="ಎರ್ಲಿ ಬ್ಲೈಟ್ ಎಲೆಗಳಲ್ಲಿ ವಲಯಾಕಾರದ ಕಲೆಗಳನ್ನು ಉಂಟುಮಾಡುತ್ತದೆ.";
info.Remedy="ಫಂಗಿಸೈಡ್ ಬಳಸಿ.";
info.Note="ತೇವ ಪರಿಸರದಲ್ಲಿ ಹರಡುತ್ತದೆ.";

elseif isLang("te")
info.Description="ఎర్లీ బ్లైట్ ఆకులపై వలయాకార మచ్చలు కలిగిస్తుంది.";
info.Remedy="ఫంగిసైడ్ వాడండి.";
info.Note="తేమ ఎక్కువైతే వ్యాధి పెరుగుతుంది.";

else
info.Description="Early blight causes concentric ring-shaped spots on leaves, leading to yellowing and reduced plant productivity.";
info.Remedy="Spray Mancozeb and remove infected leaves.";
info.Note="Occurs in warm and humid conditions.";
end

case "late_blight"

if isLang("hi")
info.Description="लेट ब्लाइट एक अत्यंत गंभीर रोग है जो पत्तियों पर पानी जैसे धब्बे बनाता है और जल्दी फैलकर पूरी फसल को नष्ट कर सकता है।";
info.Remedy="मेटालेक्सिल या अन्य प्रभावी फंगीसाइड का उपयोग करें।";
info.Note="ठंडे और नम वातावरण में यह रोग तेजी से फैलता है।";

elseif isLang("kn")
info.Description="ಲೇಟ್ ಬ್ಲೈಟ್ ಗಂಭೀರ ರೋಗವಾಗಿದೆ.";
info.Remedy="ಫಂಗಿಸೈಡ್ ಬಳಸಿ.";
info.Note="ತೇವ ವಾತಾವರಣದಲ್ಲಿ ಹೆಚ್ಚು ಹರಡುತ್ತದೆ.";

elseif isLang("te")
info.Description="లేట్ బ్లైట్ తీవ్రమైన వ్యాధి.";
info.Remedy="ఫంగిసైడ్ వాడండి.";
info.Note="తేమ ఉన్నప్పుడు వ్యాప్తి చెందుతుంది.";

else
info.Description="Late blight is a destructive disease causing water-soaked lesions that quickly turn brown or black, destroying crops.";
info.Remedy="Apply fungicides like Metalaxyl.";
info.Note="Spreads rapidly in cool, moist conditions.";
end

case "bacterial_wilt"

if isLang("hi")
info.Description="बैक्टीरियल विल्ट एक गंभीर और तेजी से फैलने वाला रोग है जो बैक्टीरिया (Ralstonia solanacearum) के कारण होता है। यह रोग पौधे की जड़ों और तने की वाहिकाओं (vascular system) को प्रभावित करता है, जिससे पानी और पोषक तत्वों का परिवहन रुक जाता है। परिणामस्वरूप पौधा अचानक मुरझा जाता है, जबकि पत्तियां हरी ही दिखाई दे सकती हैं। यह रोग विशेष रूप से आलू, टमाटर और अन्य सोलनैसी फसलों में अधिक देखा जाता है।";
info.Remedy="संक्रमित पौधों को तुरंत खेत से हटाकर नष्ट करें। रोगमुक्त बीज का उपयोग करें। फसल चक्र अपनाएं और कम से कम 2-3 साल तक संवेदनशील फसलें न लगाएं। जैविक नियंत्रण के लिए ट्राइकोडर्मा का उपयोग करें और आवश्यक होने पर उपयुक्त रसायनों का प्रयोग करें।";
info.Note="अधिक पानी और खराब जल निकासी इस रोग को बढ़ाते हैं। इसलिए खेत में जल निकासी अच्छी रखें और मिट्टी की स्वच्छता बनाए रखें।";

elseif isLang("kn")
info.Description="ಬ್ಯಾಕ್ಟೀರಿಯಲ್ ವಿಲ್ಟ್ ಒಂದು ಗಂಭೀರವಾದ ರೋಗವಾಗಿದ್ದು Ralstonia solanacearum ಎಂಬ ಬ್ಯಾಕ್ಟೀರಿಯಾದಿಂದ ಉಂಟಾಗುತ್ತದೆ. ಇದು ಸಸ್ಯದ ಬೇರು ಮತ್ತು ತೊಗಟೆಯ ಒಳಗಿನ ನೀರಿನ ಸಾಗಣೆ ವ್ಯವಸ್ಥೆಯನ್ನು ಹಾನಿಗೊಳಿಸುತ್ತದೆ. ಇದರ ಪರಿಣಾಮವಾಗಿ ಸಸ್ಯವು ಏಕಾಏಕಿ ಒಣಗುತ್ತದೆ, ಆದರೆ ಎಲೆಗಳು ಹಸಿರಾಗಿಯೇ ಕಾಣಿಸಬಹುದು. ಈ ರೋಗವು ವಿಶೇಷವಾಗಿ ಆಲೂಗಡ್ಡೆ ಮತ್ತು ಟೊಮ್ಯಾಟೋ ಬೆಳೆಗಳಲ್ಲಿ ಸಾಮಾನ್ಯವಾಗಿದೆ.";
info.Remedy="ಸಂಕ್ರಮಿತ ಸಸ್ಯಗಳನ್ನು ತಕ್ಷಣ ತೆಗೆದುಹಾಕಿ ಮತ್ತು ನಾಶಪಡಿಸಿ. ರೋಗರಹಿತ ಬೀಜಗಳನ್ನು ಬಳಸಿರಿ. ಬೆಳೆ ಪರಿವರ್ತನೆ (crop rotation) ಅನುಸರಿಸಿ. ಟ್ರೈಕೊಡರ್ಮಾ ಮುಂತಾದ ಜೈವಿಕ ನಿಯಂತ್ರಣ ವಿಧಾನಗಳನ್ನು ಬಳಸಬಹುದು.";
info.Note="ನೀರಿನ ನಿಲುವು ಮತ್ತು ಅತಿಯಾದ ತೇವದಿಂದ ಈ ರೋಗ ಹೆಚ್ಚಾಗುತ್ತದೆ. ಆದ್ದರಿಂದ ಉತ್ತಮ ನೀರು ಹರಿವನ್ನು (drainage) ಕಾಯ್ದುಕೊಳ್ಳಿ.";

elseif isLang("te")
info.Description="బాక్టీరియల్ విల్ట్ ఒక తీవ్రమైన వ్యాధి, ఇది Ralstonia solanacearum అనే బ్యాక్టీరియా వల్ల కలుగుతుంది. ఇది మొక్కలోని నీరు మరియు పోషక పదార్థాల రవాణా వ్యవస్థను దెబ్బతీస్తుంది. దీనివల్ల మొక్క అకస్మాత్తుగా వాడిపోతుంది, అయితే ఆకులు ఇంకా ఆకుపచ్చగా కనిపించవచ్చు. ఈ వ్యాధి ముఖ్యంగా బంగాళాదుంప మరియు టమోటా పంటలలో కనిపిస్తుంది.";
info.Remedy="సంఖ్య ఉన్న మొక్కలను వెంటనే తొలగించి నాశనం చేయండి. ఆరోగ్యకరమైన విత్తనాలను ఉపయోగించండి. పంట మార్పిడి చేయండి మరియు ట్రైకోడెర్మా వంటి జీవ నియంత్రణ పద్ధతులను ఉపయోగించండి.";
info.Note="నీటి నిల్వ మరియు అధిక తేమ ఈ వ్యాధిని పెంచుతాయి. కాబట్టి మంచి డ్రైనేజీ వ్యవస్థను నిర్వహించండి.";

else
info.Description="Bacterial wilt is a highly destructive disease caused by the bacterium Ralstonia solanacearum. It infects the vascular system of the plant, blocking the movement of water and nutrients. As a result, the plant shows sudden wilting even though the leaves may remain green initially. It is commonly seen in crops like potato, tomato, and other solanaceous plants.";
info.Remedy="Remove and destroy infected plants immediately to prevent spread. Use certified disease-free planting material. Practice crop rotation by avoiding susceptible crops for 2–3 seasons. Apply biological control agents like Trichoderma and maintain field sanitation.";
info.Note="The disease spreads rapidly in warm, moist soils with poor drainage. Maintaining proper soil hygiene and good drainage is essential to prevent infection.";
end

case "nematode_damage"

if isLang("hi")
info.Description="नेमाटोड छोटे कीट होते हैं जो जड़ों को नुकसान पहुंचाते हैं, जिससे पौधे की वृद्धि रुक जाती है।";
info.Remedy="मिट्टी में नेमाटोड नियंत्रण के लिए उचित रसायनों का उपयोग करें।";
info.Note="फसल चक्र अपनाना लाभदायक होता है।";

elseif isLang("kn")
info.Description="ನೆಮಾಟೋಡ್ ಸಸ್ಯದ ಬೇರುಗಳಿಗೆ ಹಾನಿ ಮಾಡುತ್ತದೆ.";
info.Remedy="ನೆಮಾಟೋಡ್ ನಿಯಂತ್ರಣ ಔಷಧಿ ಬಳಸಿ.";
info.Note="ಬೆಳೆ ಚಕ್ರ ಅನುಸರಿಸಿ.";

elseif isLang("te")
info.Description="నీమటోడ్ మూలాలను దెబ్బతీస్తుంది.";
info.Remedy="నీమటోడ్ నియంత్రణ చేయండి.";
info.Note="పంట మార్పిడి చేయండి.";

else
info.Description="Nematodes damage plant roots, reducing nutrient uptake and plant growth.";
info.Remedy="Apply nematicides and practice crop rotation.";
info.Note="Maintain soil health.";
end

case "pest_damage"

if isLang("hi")
info.Description="कीट पत्तियों को खाकर या नुकसान पहुंचाकर पौधे की वृद्धि को प्रभावित करते हैं।";
info.Remedy="उचित कीटनाशक का उपयोग करें।";
info.Note="नियमित निरीक्षण आवश्यक है।";

elseif isLang("kn")
info.Description="ಕೀಟಗಳು ಎಲೆಗಳಿಗೆ ಹಾನಿ ಮಾಡುತ್ತವೆ.";
info.Remedy="ಕೀಟನಾಶಕ ಬಳಸಿ.";
info.Note="ನಿಯಮಿತವಾಗಿ ಪರಿಶೀಲಿಸಿ.";

elseif isLang("te")
info.Description="పురుగులు ఆకులను దెబ్బతీస్తాయి.";
info.Remedy="పురుగు మందు వాడండి.";
info.Note="పర్యవేక్షణ అవసరం.";

else
info.Description="Pests damage leaf tissues, reducing plant health and yield.";
info.Remedy="Apply suitable pesticides.";
info.Note="Monitor regularly.";
end

case "viral_disease"

if isLang("hi")
info.Description="वायरल रोग पत्तियों के रंग और आकार को बदल देते हैं और पौधे की वृद्धि को कम करते हैं।";
info.Remedy="संक्रमित पौधों को हटाएं और कीट नियंत्रण करें।";
info.Note="वायरस फैलने से रोकना ही सबसे अच्छा उपाय है।";

elseif isLang("kn")
info.Description="ವೈರಸ್ ರೋಗವು ಎಲೆಗಳ ಬಣ್ಣ ಮತ್ತು ಆಕಾರವನ್ನು ಬದಲಿಸುತ್ತದೆ.";
info.Remedy="ಸಂಕ್ರಮಿತ ಸಸ್ಯಗಳನ್ನು ತೆಗೆದುಹಾಕಿ.";
info.Note="ಕೀಟ ನಿಯಂತ್ರಣ ಮುಖ್ಯ.";

elseif isLang("te")
info.Description="వైరస్ వ్యాధి ఆకుల రంగు మారుస్తుంది.";
info.Remedy="సంఖ్య ఉన్న మొక్కలను తొలగించండి.";
info.Note="పురుగు నియంత్రణ చేయండి.";

else
info.Description="Viral diseases alter leaf color, shape, and reduce plant growth.";
info.Remedy="Remove infected plants and control insect vectors.";
info.Note="Prevention is the best strategy.";
end

case "bacterial_leaf_blight"

if isLang("hi")
info.Description="बैक्टीरियल लीफ ब्लाइट एक गंभीर रोग है जो Xanthomonas oryzae बैक्टीरिया के कारण होता है। यह पत्तियों के किनारों से शुरू होकर पीले और भूरे धब्बे बनाता है और धीरे-धीरे पूरी पत्ती को सुखा देता है। इससे प्रकाश संश्लेषण कम हो जाता है और फसल की उपज पर सीधा असर पड़ता है।";
info.Remedy="संक्रमित पौधों को हटाएं। कॉपर आधारित बैक्टीरिसाइड या स्ट्रेप्टोसाइक्लिन का छिड़काव करें। संतुलित नाइट्रोजन उर्वरक का उपयोग करें।";
info.Note="अधिक नाइट्रोजन और पानी का जमाव इस रोग को बढ़ाता है। उचित जल निकासी बनाए रखें।";

elseif isLang("kn")
info.Description="ಬ್ಯಾಕ್ಟೀರಿಯಲ್ ಲೀಫ್ ಬ್ಲೈಟ್ ರೋಗವು ಎಲೆಗಳ ಅಂಚಿನಿಂದ ಪ್ರಾರಂಭವಾಗಿ ಹಳದಿ ಮತ್ತು ಕಂದು ಕಲೆಗಳನ್ನು ಉಂಟುಮಾಡುತ್ತದೆ.";
info.Remedy="ಬ್ಯಾಕ್ಟೀರಿಯಾ ನಾಶಕ ಔಷಧಿ ಬಳಸಿ.";
info.Note="ನೀರಿನ ನಿಲುವು ತಪ್ಪಿಸಿ.";

elseif isLang("te")
info.Description="బాక్టీరియల్ లీఫ్ బ్లైట్ ఆకుల అంచుల నుండి ప్రారంభమై పసుపు మరియు గోధుమ మచ్చలు కలిగిస్తుంది.";
info.Remedy="బ్యాక్టీరియా మందులు వాడండి.";
info.Note="నీటి నిల్వ నివారించండి.";

else
info.Description="Bacterial leaf blight is a destructive disease caused by Xanthomonas oryzae. It begins at leaf tips and margins, forming yellow to brown lesions that spread and dry the leaf, reducing yield.";
info.Remedy="Apply bactericides such as Streptocycline and copper-based sprays. Remove infected plants.";
info.Note="Excess nitrogen and water stagnation promote disease spread.";
end

case "brown_spot"

if isLang("hi")
info.Description="ब्राउन स्पॉट रोग पत्तियों पर भूरे रंग के छोटे-छोटे धब्बे बनाता है जो धीरे-धीरे बड़े होकर पौधे की वृद्धि को प्रभावित करते हैं। यह रोग पोषण की कमी और खराब मिट्टी की स्थिति में अधिक होता है।";
info.Remedy="संतुलित उर्वरक का उपयोग करें और फंगीसाइड जैसे मैनकोजेब का छिड़काव करें।";
info.Note="पोटाश और नाइट्रोजन की कमी इस रोग को बढ़ाती है।";

elseif isLang("kn")
info.Description="ಬ್ರೌನ್ ಸ್ಪಾಟ್ ಎಲೆಗಳ ಮೇಲೆ ಕಂದು ಕಲೆಗಳನ್ನು ಉಂಟುಮಾಡುತ್ತದೆ.";
info.Remedy="ಫಂಗಿಸೈಡ್ ಬಳಸಿ.";
info.Note="ಪೋಷಕಾಂಶ ಕೊರತೆ ತಪ್ಪಿಸಿ.";

elseif isLang("te")
info.Description="బ్రౌన్ స్పాట్ ఆకులపై గోధుమ మచ్చలు కలిగిస్తుంది.";
info.Remedy="ఫంగిసైడ్ వాడండి.";
info.Note="పోషక లోపం నివారించండి.";

else
info.Description="Brown spot causes small brown lesions on leaves that expand and reduce plant vigor. It is often associated with nutrient deficiency.";
info.Remedy="Apply fungicides like Mancozeb and improve soil nutrition.";
info.Note="Ensure balanced fertilization.";
end

case "leaf_blast"

if isLang("hi")
info.Description="लीफ ब्लास्ट एक फफूंद जनित रोग है जो पत्तियों पर हीरे के आकार के धब्बे बनाता है। यह तेजी से फैलता है और पौधे को कमजोर कर देता है।";
info.Remedy="ट्राइसाइक्लाजोल जैसे फंगीसाइड का छिड़काव करें। संक्रमित पौधों को हटाएं।";
info.Note="अधिक नाइट्रोजन और नमी से यह रोग बढ़ता है।";

elseif isLang("kn")
info.Description="ಲೀಫ್ ಬ್ಲಾಸ್ಟ್ ಎಲೆಗಳಲ್ಲಿ ವಜ್ರಾಕಾರದ ಕಲೆಗಳನ್ನು ಉಂಟುಮಾಡುತ್ತದೆ.";
info.Remedy="ಫಂಗಿಸೈಡ್ ಬಳಸಿ.";
info.Note="ತೇವ ಪರಿಸರದಲ್ಲಿ ಹೆಚ್ಚಾಗುತ್ತದೆ.";

elseif isLang("te")
info.Description="లీఫ్ బ్లాస్ట్ ఆకులపై వజ్రాకార మచ్చలు కలిగిస్తుంది.";
info.Remedy="ఫంగిసైడ్ వాడండి.";
info.Note="తేమ ఎక్కువైతే వ్యాప్తి చెందుతుంది.";

else
info.Description="Leaf blast is a fungal disease causing diamond-shaped lesions on leaves. It spreads rapidly and reduces crop yield.";
info.Remedy="Apply fungicides such as Tricyclazole.";
info.Note="Avoid excessive nitrogen application.";
end

case "leaf_scald"

if isLang("hi")
info.Description="लीफ स्काल्ड रोग पत्तियों पर सफेद या हल्के भूरे धब्बे बनाता है जो धीरे-धीरे पूरे पत्ते को प्रभावित करते हैं।";
info.Remedy="संक्रमित पत्तियों को हटाएं और फंगीसाइड का उपयोग करें।";
info.Note="अधिक नमी और खराब वायु संचार इस रोग को बढ़ाते हैं।";

elseif isLang("kn")
info.Description="ಲೀಫ್ ಸ್ಕಾಲ್ಡ್ ಎಲೆಗಳ ಮೇಲೆ ಬಿಳಿ ಕಲೆಗಳನ್ನು ಉಂಟುಮಾಡುತ್ತದೆ.";
info.Remedy="ಫಂಗಿಸೈಡ್ ಬಳಸಿ.";
info.Note="ತೇವ ಕಡಿಮೆ ಮಾಡಿ.";

elseif isLang("te")
info.Description="లీఫ్ స్కాల్డ్ ఆకులపై తెల్లటి మచ్చలు కలిగిస్తుంది.";
info.Remedy="ఫంగిసైడ్ వాడండి.";
info.Note="తేమ తగ్గించండి.";

else
info.Description="Leaf scald produces pale lesions that expand and damage leaf tissue.";
info.Remedy="Remove infected leaves and apply fungicide.";
info.Note="Maintain good airflow.";
end

case "sheath_blight"

if isLang("hi")
info.Description="शीथ ब्लाइट रोग तने और पत्तियों के निचले हिस्से को प्रभावित करता है और भूरे धब्बे बनाता है। यह पौधे की वृद्धि और उपज को कम करता है।";
info.Remedy="कार्बेन्डाजिम या अन्य फंगीसाइड का छिड़काव करें। पौधों के बीच दूरी बनाए रखें।";
info.Note="घना रोपण और अधिक नमी इस रोग को बढ़ाते हैं।";

elseif isLang("kn")
info.Description="ಶೀತ್ ಬ್ಲೈಟ್ ಸಸ್ಯದ ತಳಭಾಗವನ್ನು ಹಾನಿಗೊಳಿಸುತ್ತದೆ.";
info.Remedy="ಫಂಗಿಸೈಡ್ ಬಳಸಿ.";
info.Note="ಗಟ್ಟಿಯಾದ ನೆಡುವಿಕೆ ತಪ್ಪಿಸಿ.";

elseif isLang("te")
info.Description="షీత్ బ్లైట్ మొక్క దిగువ భాగాన్ని ప్రభావితం చేస్తుంది.";
info.Remedy="ఫంగిసైడ్ వాడండి.";
info.Note="గట్టి నాటడం నివారించండి.";

else
info.Description="Sheath blight affects the lower stem and leaf sheath, causing brown lesions and reducing yield.";
info.Remedy="Apply fungicides like Carbendazim and maintain spacing.";
info.Note="Avoid dense planting.";
end

case "brown_blight"

if isLang("hi")
info.Description="ब्राउन ब्लाइट चाय की पत्तियों पर भूरे धब्बे बनाता है जो धीरे-धीरे बड़े होकर पत्तियों को सुखा देता है। यह फफूंद जनित रोग है और पत्तियों की गुणवत्ता को खराब करता है, जिससे उत्पादन और चाय की गुणवत्ता दोनों प्रभावित होते हैं।";
info.Remedy="मैनकोजेब या कार्बेन्डाजिम जैसे फंगीसाइड का छिड़काव करें और संक्रमित पत्तियों को हटाएं।";
info.Note="अधिक नमी और घना पौधारोपण इस रोग को बढ़ाते हैं।";

elseif isLang("kn")
info.Description="ಬ್ರೌನ್ ಬ್ಲೈಟ್ ಚಹಾ ಎಲೆಗಳ ಮೇಲೆ ಕಂದು ಕಲೆಗಳನ್ನು ಉಂಟುಮಾಡುತ್ತದೆ ಮತ್ತು ಎಲೆಗಳನ್ನು ಒಣಗಿಸುತ್ತದೆ.";
info.Remedy="ಫಂಗಿಸೈಡ್ ಬಳಸಿ ಮತ್ತು ಸೋಂಕಿತ ಎಲೆಗಳನ್ನು ತೆಗೆದುಹಾಕಿ.";
info.Note="ತೇವ ಹೆಚ್ಚಾದರೆ ರೋಗ ಹೆಚ್ಚಾಗುತ್ತದೆ.";

elseif isLang("te")
info.Description="బ్రౌన్ బ్లైట్ టీ ఆకులపై గోధుమ మచ్చలు కలిగించి ఆకులను ఎండగొడుతుంది.";
info.Remedy="ఫంగిసైడ్ వాడండి మరియు దెబ్బతిన్న ఆకులను తొలగించండి.";
info.Note="తేమ ఎక్కువైతే వ్యాధి పెరుగుతుంది.";

else
info.Description="Brown blight is a fungal disease that causes brown lesions on tea leaves, leading to drying and reduced leaf quality.";
info.Remedy="Apply fungicides such as Mancozeb or Carbendazim and remove infected leaves.";
info.Note="High humidity promotes disease spread.";
end

case "gray_blight"

if isLang("hi")
info.Description="ग्रे ब्लाइट चाय की पत्तियों पर धूसर रंग के धब्बे बनाता है, जो धीरे-धीरे पूरे पत्ते को प्रभावित करते हैं। यह पत्तियों को कमजोर करता है और उत्पादन को कम करता है।";
info.Remedy="फंगीसाइड का छिड़काव करें और संक्रमित पत्तियों को हटाएं।";
info.Note="नमी और खराब वेंटिलेशन इस रोग को बढ़ाते हैं।";

elseif isLang("kn")
info.Description="ಗ್ರೇ ಬ್ಲೈಟ್ ಎಲೆಗಳ ಮೇಲೆ ಬೂದು ಕಲೆಗಳನ್ನು ಉಂಟುಮಾಡುತ್ತದೆ.";
info.Remedy="ಫಂಗಿಸೈಡ್ ಬಳಸಿ.";
info.Note="ತೇವ ಹೆಚ್ಚಾದರೆ ಹರಡುತ್ತದೆ.";

elseif isLang("te")
info.Description="గ్రే బ్లైట్ ఆకులపై బూడిద రంగు మచ్చలు కలిగిస్తుంది.";
info.Remedy="ఫంగిసైడ్ వాడండి.";
info.Note="తేమ ఉన్నప్పుడు వ్యాప్తి చెందుతుంది.";

else
info.Description="Gray blight produces gray patches on leaves, weakening plant structure and reducing yield.";
info.Remedy="Use appropriate fungicides and remove infected leaves.";
info.Note="Ensure proper air circulation.";
end

case "green_mirid_bug"

if isLang("hi")
info.Description="ग्रीन मिरिड बग एक कीट है जो पत्तियों का रस चूसता है और छोटे-छोटे धब्बे बनाता है। इससे पत्तियां विकृत हो जाती हैं और उत्पादन कम हो जाता है।";
info.Remedy="उचित कीटनाशक का उपयोग करें और नियमित निरीक्षण करें।";
info.Note="कीट नियंत्रण के बिना यह तेजी से फैल सकता है।";

elseif isLang("kn")
info.Description="ಗ್ರೀನ್ ಮಿರಿಡ್ ಬಗ್ ಎಲೆಗಳ ರಸವನ್ನು ಹೀರುತ್ತದೆ.";
info.Remedy="ಕೀಟನಾಶಕ ಬಳಸಿ.";
info.Note="ನಿಯಂತ್ರಣ ಅಗತ್ಯ.";

elseif isLang("te")
info.Description="గ్రీన్ మిరిడ్ బగ్ ఆకుల రసాన్ని పీలుస్తుంది.";
info.Remedy="పురుగు మందు వాడండి.";
info.Note="పర్యవేక్షణ అవసరం.";

else
info.Description="Green mirid bug is an insect pest that sucks sap from leaves, causing spots and deformation.";
info.Remedy="Apply suitable insecticides.";
info.Note="Regular monitoring is essential.";
end

case "helopeltis"

if isLang("hi")
info.Description="हेलोपेल्टिस एक प्रमुख कीट है जो चाय की पत्तियों पर धब्बे और घाव बनाता है। यह पौधे की वृद्धि को प्रभावित करता है।";
info.Remedy="कीटनाशकों का छिड़काव करें और संक्रमित भागों को हटाएं।";
info.Note="समय पर नियंत्रण न करने पर यह तेजी से फैलता है।";

elseif isLang("kn")
info.Description="ಹೆಲೋಪೆಲ್ಟಿಸ್ ಕೀಟವು ಎಲೆಗಳಿಗೆ ಹಾನಿ ಮಾಡುತ್ತದೆ.";
info.Remedy="ಕೀಟನಾಶಕ ಬಳಸಿ.";
info.Note="ತಕ್ಷಣ ನಿಯಂತ್ರಣ ಅಗತ್ಯ.";

elseif isLang("te")
info.Description="హెలోపెల్టిస్ పురుగు ఆకులను దెబ్బతీస్తుంది.";
info.Remedy="పురుగు మందు వాడండి.";
info.Note="త్వరగా నియంత్రించాలి.";

else
info.Description="Helopeltis is a pest that causes lesions and damage on tea leaves, reducing quality and yield.";
info.Remedy="Use insecticides and remove affected parts.";
info.Note="Control early to prevent spread.";
end

case "red_spider"

if isLang("hi")
info.Description="रेड स्पाइडर माइट्स पत्तियों का रस चूसते हैं जिससे पत्तियां पीली होकर सूख जाती हैं।";
info.Remedy="अकारीसाइड (acaricide) का उपयोग करें।";
info.Note="सूखे और गर्म मौसम में अधिक फैलता है।";

elseif isLang("kn")
info.Description="ರೆಡ್ ಸ್ಪೈಡರ್ ಎಲೆಗಳನ್ನು ಹಾನಿಗೊಳಿಸುತ್ತದೆ.";
info.Remedy="ಅಕಾರಿಸೈಡ್ ಬಳಸಿ.";
info.Note="ಬಿಸಿಲಿನ ಪರಿಸರದಲ್ಲಿ ಹೆಚ್ಚಾಗುತ್ತದೆ.";

elseif isLang("te")
info.Description="రెడ్ స్పైడర్ ఆకులను దెబ్బతీస్తుంది.";
info.Remedy="అకారిసైడ్ వాడండి.";
info.Note="వేడి వాతావరణంలో పెరుగుతుంది.";

else
info.Description="Red spider mites suck sap from leaves, causing yellowing and drying.";
info.Remedy="Apply acaricides.";
info.Note="Common in hot, dry conditions.";
end

case "tea_algal_leaf_spot"

if isLang("hi")
info.Description="यह रोग शैवाल (algae) के कारण होता है और पत्तियों पर लाल या नारंगी धब्बे बनाता है।";
info.Remedy="कॉपर आधारित फंगीसाइड का उपयोग करें।";
info.Note="अधिक नमी में यह रोग बढ़ता है।";

elseif isLang("kn")
info.Description="ಈ ರೋಗವು ಶೈವಲದಿಂದ ಉಂಟಾಗುತ್ತದೆ.";
info.Remedy="ಕಾಪರ್ ಫಂಗಿಸೈಡ್ ಬಳಸಿ.";
info.Note="ತೇವ ಹೆಚ್ಚಾದರೆ ಹೆಚ್ಚಾಗುತ್ತದೆ.";

elseif isLang("te")
info.Description="ఈ వ్యాధి ఆల్గీ వల్ల వస్తుంది.";
info.Remedy="కాపర్ ఫంగిసైడ్ వాడండి.";
info.Note="తేమ ఉన్నప్పుడు పెరుగుతుంది.";

else
info.Description="Algal leaf spot causes reddish or orange patches due to algae growth on leaves.";
info.Remedy="Apply copper-based fungicides.";
info.Note="Thrives in humid conditions.";
end

case "brown_rust"

if isLang("hi")
info.Description="ब्राउन रस्ट गेहूं का एक सामान्य फफूंद जनित रोग है जो पत्तियों पर छोटे-छोटे भूरे रंग के पाउडर जैसे धब्बे बनाता है। यह रोग पत्तियों की प्रकाश संश्लेषण क्षमता को कम कर देता है, जिससे पौधे की वृद्धि और उत्पादन प्रभावित होता है।";
info.Remedy="प्रोपिकोनाजोल या टेबुकोनाजोल जैसे फंगीसाइड का छिड़काव करें। रोगरोधी किस्मों का चयन करें।";
info.Note="यह रोग आर्द्र और ठंडे मौसम में तेजी से फैलता है।";

elseif isLang("kn")
info.Description="ಬ್ರೌನ್ ರಸ್ಟ್ ಎಲೆಗಳ ಮೇಲೆ ಕಂದು ಕಲೆಗಳನ್ನು ಉಂಟುಮಾಡುತ್ತದೆ ಮತ್ತು ಬೆಳವಣಿಗೆಯನ್ನು ಕಡಿಮೆ ಮಾಡುತ್ತದೆ.";
info.Remedy="ಫಂಗಿಸೈಡ್ ಬಳಸಿ.";
info.Note="ತೇವ ಮತ್ತು ತಂಪಾದ ವಾತಾವರಣದಲ್ಲಿ ಹೆಚ್ಚಾಗುತ್ತದೆ.";

elseif isLang("te")
info.Description="బ్రౌన్ రస్ట్ ఆకులపై గోధుమ మచ్చలు కలిగిస్తుంది.";
info.Remedy="ఫంగిసైడ్ వాడండి.";
info.Note="చల్లని తేమ వాతావరణంలో ఎక్కువగా ఉంటుంది.";

else
info.Description="Brown rust is a fungal disease that produces small brown pustules on leaves, reducing photosynthesis and yield.";
info.Remedy="Apply fungicides such as Propiconazole or Tebuconazole.";
info.Note="Common in cool and humid conditions.";
end

case "loose_smut"

if isLang("hi")
info.Description="लूज स्मट एक बीज जनित फफूंद रोग है जो गेहूं की बालियों को प्रभावित करता है। इसमें दाने काले पाउडर में बदल जाते हैं और उत्पादन पूरी तरह नष्ट हो सकता है।";
info.Remedy="बीज उपचार के लिए कार्बेन्डाजिम या टेबुकोनाजोल का उपयोग करें। केवल प्रमाणित बीज का उपयोग करें।";
info.Note="यह रोग बीज के माध्यम से फैलता है, इसलिए बीज उपचार बहुत जरूरी है।";

elseif isLang("kn")
info.Description="ಲೂಸ್ ಸ್ಮಟ್ ಬೀಜದಿಂದ ಹರಡುವ ರೋಗವಾಗಿದೆ ಮತ್ತು ಧಾನ್ಯಗಳನ್ನು ಹಾನಿಗೊಳಿಸುತ್ತದೆ.";
info.Remedy="ಬೀಜ ಚಿಕಿತ್ಸೆ ಮಾಡಿ.";
info.Note="ರೋಗರಹಿತ ಬೀಜ ಬಳಸಿ.";

elseif isLang("te")
info.Description="లూస్ స్మట్ విత్తనాల ద్వారా వ్యాపిస్తుంది మరియు ధాన్యాన్ని నాశనం చేస్తుంది.";
info.Remedy="విత్తన చికిత్స చేయండి.";
info.Note="ఆరోగ్యకరమైన విత్తనాలు ఉపయోగించండి.";

else
info.Description="Loose smut is a seed-borne fungal disease that converts grains into black powdery spores, destroying yield.";
info.Remedy="Treat seeds with fungicides like Carbendazim or Tebuconazole.";
info.Note="Use certified disease-free seeds.";
end

case "septoria_leaf_blotch"

if isLang("hi")
info.Description="सेप्टोरिया लीफ ब्लॉच पत्तियों पर अनियमित आकार के भूरे धब्बे बनाता है जो धीरे-धीरे फैलते हैं और पत्तियों को सुखा देते हैं।";
info.Remedy="फंगीसाइड जैसे मैनकोजेब या क्लोरोथालोनिल का छिड़काव करें।";
info.Note="यह रोग नम और ठंडे वातावरण में अधिक होता है।";

elseif isLang("kn")
info.Description="ಸೆಪ್ಟೋರಿಯಾ ಎಲೆಗಳಲ್ಲಿ ಅಸಮ ಕಲೆಗಳನ್ನು ಉಂಟುಮಾಡುತ್ತದೆ.";
info.Remedy="ಫಂಗಿಸೈಡ್ ಬಳಸಿ.";
info.Note="ತೇವ ಪರಿಸರದಲ್ಲಿ ಹೆಚ್ಚಾಗುತ್ತದೆ.";

elseif isLang("te")
info.Description="సెప్టోరియా ఆకులపై అసమాన మచ్చలు కలిగిస్తుంది.";
info.Remedy="ఫంగిసైడ్ వాడండి.";
info.Note="తేమ ఉన్నప్పుడు పెరుగుతుంది.";

else
info.Description="Septoria leaf blotch causes irregular brown lesions that expand and damage leaves.";
info.Remedy="Apply fungicides such as Mancozeb.";
info.Note="Thrives in cool, wet environments.";
end

case "yellow_rust"

if isLang("hi")
info.Description="येलो रस्ट पत्तियों पर पीली धारियां बनाता है जो धीरे-धीरे फैलती हैं और पौधे की वृद्धि को प्रभावित करती हैं।";
info.Remedy="फंगीसाइड का उपयोग करें और रोगरोधी किस्में लगाएं।";
info.Note="ठंडे और नम मौसम में यह तेजी से फैलता है।";

elseif isLang("kn")
info.Description="ಯೆಲ್ಲೋ ರಸ್ಟ್ ಎಲೆಗಳಲ್ಲಿ ಹಳದಿ ಸಾಲುಗಳನ್ನು ಉಂಟುಮಾಡುತ್ತದೆ.";
info.Remedy="ಫಂಗಿಸೈಡ್ ಬಳಸಿ.";
info.Note="ತಂಪಾದ ವಾತಾವರಣದಲ್ಲಿ ಹರಡುತ್ತದೆ.";

elseif isLang("te")
info.Description="యెల్లో రస్ట్ ఆకులపై పసుపు గీతలు కలిగిస్తుంది.";
info.Remedy="ఫంగిసైడ్ వాడండి.";
info.Note="చల్లని వాతావరణంలో వ్యాప్తి చెందుతుంది.";

else
info.Description="Yellow rust produces yellow stripes on leaves, reducing photosynthesis and yield.";
info.Remedy="Apply fungicides and use resistant varieties.";
info.Note="Spreads in cool, moist climates.";
end

case "unknown"

if isLang("hi")
info.Description="रोग की पहचान स्पष्ट रूप से नहीं हो पाई।";
info.Remedy="अच्छी रोशनी में स्पष्ट फोटो लें।";
info.Note="आवश्यक होने पर विशेषज्ञ से संपर्क करें।";

elseif isLang("kn")
info.Description="ರೋಗವನ್ನು ಸ್ಪಷ್ಟವಾಗಿ ಗುರುತಿಸಲಾಗಲಿಲ್ಲ.";
info.Remedy="ಸ್ಪಷ್ಟವಾದ ಚಿತ್ರ ತೆಗೆದುಕೊಳ್ಳಿ.";
info.Note="ತಜ್ಞರನ್ನು ಸಂಪರ್ಕಿಸಿ.";

elseif isLang("te")
info.Description="వ్యాధిని స్పష్టంగా గుర్తించలేకపోయాము.";
info.Remedy="స్పష్టమైన చిత్రం తీసుకోండి.";
info.Note="నిపుణుడిని సంప్రదించండి.";

else
info.Description="The disease could not be identified clearly. The image may be unclear or the disease may not be in the trained dataset.";
info.Remedy="Capture a clear image in proper lighting or consult an agriculture expert.";
info.Note="Ensure proper focus and lighting conditions.";
end

otherwise
info.Description="Disease detected but not available in database.";
info.Remedy="Consult agriculture expert.";
info.Note="Model limitation.";

end

end