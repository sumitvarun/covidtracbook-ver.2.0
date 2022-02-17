import 'package:flutter/material.dart';

Color primaryBlack = const Color(0xff202c3b);

class DataSource {
  static String quote =
      'You don’t need to know the whole alphabet of Safety. The A, B, C of it will save you if you follow it: Always Be Careful.';
  static List questionAnswer = [
    {'question': 'SECTION: 01. VIROLOGY AND TRANSMISSION', 'answer': ''},
    {
      'question': 'What is the incubation period for COVID-19?',
      'answer':
          'The incubation period for COVID-19 is thought to be within 14 days following exposure, with most cases occurring approximately three to five days after exposure. The incubation period also varies by viral variant. For example, the incubation period for the Omicron variant (B.1.1.159) appears to be slightly shorter than other variants, with symptoms first appearing around three days after exposure.'
    },
    {
      'question': 'What are some of the important SARS-CoV-2 variants?',
      'answer':
          'Multiple SARS-CoV-2 variants are circulating globally. Some variants contain mutations in the surface spike protein, which mediates viral attachment to human cells and is a target for natural and vaccine-induced immunity. Thus, these variants have the potential to be more transmissible, cause more severe disease, and/or evade natural or vaccine-induced immune responses. Some of the more important circulating variants are:    Alpha (B.1.1.7 lineage), also known as 20I/501Y.V1, was first identified in the United Kingdom in late 2020. This variant is estimated to be more transmissible than wild-type virus. Some studies suggest this variant may cause more severe illness.  : Delta (B.1.617.2 lineage), also known as 20A/S:478K, was identified in late 2020 in India. This variant is more transmissible than B.1.1.7 and is also associated with more severe disease.  :Omicron (B.1.1.529 lineage) was first reported from southern Africa in November 2021, and it was promptly identified in multiple other countries. The variant contains >30 mutations in the spike protein, including mutations that have been found in other variants of concern and that have been associated with increased transmissibility and decreased susceptibility to neutralizing antibodies (including therapeutic monoclonal antibodies). Emerging data suggest that Omicron has a replication advantage over the Delta variant and evades infection- and vaccine-induced humoral immunity to a greater extent than prior variants. The risk of severe disease with the Omicron variant is more uncertain.'
    },
    {'question': 'SECTION: 02. GENERAL INFORMATION', 'answer': ''},
    {
      'question': 'what is a corona virus?',
      'answer':
          'CoronaViruses are a large family of viruses which may cause illness in animals or humans.  In humans, several coronaviruses are known to cause respiratory infections ranging from the common cold to more severe diseases such as Middle East Respiratory Syndrome (MERS) and Severe Acute Respiratory Syndrome (SARS). The most recently discovered coronavirus causes coronavirus disease COVID-19.'
    },
    {
      'question':
          'why is the disease being called CoronaVirus disease 2019, Covid-19?',
      'answer':
          'On February 11, 2020 the World Health Organization announced an official name for the disease that is causing the 2019 novel coronavirus outbreak, first identified in Wuhan China. The new name of this disease is coronavirus disease 2019, abbreviated as COVID-19. In COVID-19, ‘CO’ stands for ‘corona,’ ‘VI’ for ‘virus,’ and ‘D’ for disease. Formerly, this disease was referred to as “2019 novel coronavirus”.'
    },
    {
      'question': 'What are the symptoms of COVID-19?',
      'answer':
          'The most common symptoms of COVID-19 are fever, dry cough, and tiredness. Other symptoms that are less common and may affect some patients include aches and pains, nasal congestion, headache, conjunctivitis, sore throat, diarrhea, loss of taste or smell or a rash on skin or discoloration of fingers or toes. These symptoms are usually mild and begin gradually. Some people become infected but only have very mild symptoms.'
              'Most people (about 80%) recover from the disease without needing hospital treatment. Around 1 out of every 5 people who gets COVID-19 becomes seriously ill and develops difficulty breathing. Older people, and those with underlying medical problems like high blood pressure, heart and lung problems, diabetes, or cancer, are at higher risk of developing serious illness.  However, anyone can catch COVID-19 and become seriously ill.  People of all ages who experience fever and/or  cough associated with difficulty breathing/shortness of breath, chest pain/pressure, or loss of speech or movement should seek medical attention immediately. If possible, it is recommended to call the health care provider or facility first, so the patient can be directed to the right clinic.'
    },

    {
      'question':
          'What should I do if I have COVID-19 symptoms and when should I seek medical care?',
      'answer': 'If you have minor symptoms, such as a slight cough or a mild fever, there is generally no need to seek medical care. Stay at home, self-isolate and monitor your symptoms. Follow national guidance on self-isolation.'
          'However, if you live in an area with malaria or dengue fever it is important that you do not ignore symptoms of fever.  Seek medical help.  When you attend the health facility wear a mask if possible, keep at least 1 metre distance from other people and do not touch surfaces with your hands. If it is a child who is sick help the child stick to this advice.'
          'Seek immediate medical care if you have difficulty breathing or pain/pressure in the chest. If possible, call your health care provider in advance, so he/she can direct you to the right health facility.'
    },
    {
      'question': 'How does COVID-19 spread?',
      'answer':
          'People can catch COVID-19 from others who have the virus. The disease spreads primarily from person to person through small droplets from the nose or mouth, which are expelled when a person with COVID-19 coughs, sneezes, or speaks. These droplets are relatively heavy, do not travel far and quickly sink to the ground. People can catch COVID-19 if they breathe in these droplets from a person infected with the virus.  This is why it is important to stay at least 1 meter) away from others. These droplets can land on objects and surfaces around the person such as tables, doorknobs and handrails.  People can become infected by touching these objects or surfaces, then touching their eyes, nose or mouth.  This is why it is important to wash your hands regularly with soap and water or clean with alcohol-based hand rub.'
              'WHO is assessing ongoing research on the ways that COVID-19 is spread and will continue to share updated findings.'
    },
    {
      'question': 'Can COVID-19 be caught from a person who has no symptoms?',
      'answer':
          'COVID-19 is mainly spread through respiratory droplets expelled by someone who is coughing or has other symptoms such as fever or tiredness. Many people with COVID-19 experience only mild symptoms. This is particularly true in the early stages of the disease. It is possible to catch COVID-19 from someone who has just a mild cough and does not feel ill.'
              'Some reports have indicated that people with no symptoms can transmit the virus. It is not yet known how often it happens. WHO is assessing ongoing research on the topic and will continue to share updated findings.'
    },
    {
      'question':
          'How can we protect others and ourselves if we dont know who is infected.',
      'answer':
          'Practicing hand and respiratory hygiene is important at ALL times and is the best way to protect others and yourself.'
              'When possible maintain at least a 1 meter distance between yourself and others. This is especially important if you are standing by someone who is coughing or sneezing.  Since some infected persons may not yet be exhibiting symptoms or their symptoms may be mild, maintaining a physical distance with everyone is a good idea if you are in an area where COVID-19 is circulating'
    },
    {
      'question':
          'What should I do if I have come in close contact with someone who has COVID-19?',
      'answer': 'If you have been in close contact with someone with COVID-19, you may be infected.'
          'Close contact means that you live with or have been in settings of less than 1 metre from those who have the disease. In these cases, it is best to stay at home.'
          'However, if you live in an area with malaria or dengue fever it is important that you do not ignore symptoms of fever. Seek medical help. When you attend the health facility wear a mask if possible, keep at least 1 metre distant from other people and do not touch surfaces with your hands. If it is a child who is sick help the child stick to this advice.'
          'If you do not live in an area with malaria or dengue fever please do the following:'
          'If you become ill, even with very mild symptoms you must self-isolate'
          'Even if you don’t think you have been exposed to COVID-19 but develop symptoms, then self-isolate and monitor yourself'
          'You are more likely to infect others in the early stages of the disease when you just have mild symptoms, therefore early self-isolation is very important.'
          'If you do not have symptoms, but have been exposed to an infected person, self-quarantine for 14 days.'
          'If you have definitely had COVID-19 (confirmed by a test) self-isolate for 14 days even after symptoms have disappeared as a precautionary measure – it is not yet known exactly how long people remain infectious after they have recovered. Follow national advice on self-isolation.'
    },
    {
      'question': 'What does it mean to self-isolate?',
      'answer': 'Self-isolation is an important measure taken by those who have COVID-19 symptoms to avoid infecting others in the community, including family members.'
          'Self-isolation is when a person who is experiencing fever, cough or other COVID-19 symptoms stays at home and does not go to work, school or public places. This can be voluntarily or based on his/her health care provider’s recommendation. However, if you live in an area with malaria or dengue fever it is important that you do not ignore symptoms of fever. Seek medical help. When you attend the health facility wear a mask if possible, keep at least 1 metre distant from other people and do not touch surfaces with your hands. If it is a child who is sick help the child stick to this advice.'
          'If you do not live in an area with malaria or dengue fever please do the following:'
          '-  If a person is in self-isolation, it is because he/she is ill but not severely ill (requiring medical attention)'
          'have a large, well-ventilated with hand-hygiene and toilet facilities'
          'If this is not possible, place beds at least 1 metre apart'
          'Keep at least 1 metre from others, even from your family members'
          'Monitor your symptoms daily'
          'Isolate for 14 days, even if you feel healthy'
          'If you develop difficulty breathing, contact your healthcare provider immediately – call them first if possible'
          'Stay positive and energized by keeping in touch with loved ones by phone or online, and by exercising yourself at home.'
    },
    {
      'question':
          'What is the difference between self-isolation, self-quarantine and distancing?',
      'answer': 'Quarantine means restricting activities or separating people who are not ill themselves but may have been exposed to COVID-19. The goal is to prevent spread of the disease at the time when people just develop symptoms..'
          'Isolation means separating people who are ill with symptoms of COVID-19 and may be infectious to prevent the spread of the disease.'
          'Physical distancing means being physically apart. WHO recommends keeping at least 1-metre distance from others. This is a general measure that everyone should take even if they are well with no known exposure to COVID-19. '
    },
    {
      'question':
          'What should I do if I have no symptoms, but I think I have been exposed to COVID-19? What does it mean to self-quarantine?',
      'answer': 'To self-quarantine means to separate yourself from others because you have been exposed to someone with COVID-19 even though you, yourself, do not have symptoms.During self-quarantine you monitor yourself for symptoms.  The goal of the self-quarantine is to prevent transmission.  Since people who become ill with COVID-19 can infect people immediately self-quarantine can prevent some infections from happening.'
          'In this case:'
          'Have a large, well-ventilated single room with hand hygiene and toilet facilities'
          'If this is not available place beds at least 1 metre apart.'
          'Keep at least 1-metre distance from others, even from your family members.'
          'Monitor your symptoms daily'
          'Self-quarantine for 14 days, even if you feel healthy'
          'If you develop difficulty breathing, contact your healthcare provider immediately – call them first if possible.'
          'Stay positive and energized by keeping in touch with loved ones by phone or online, and by exercising yourself at home.'
          'However, if you live in an area with malaria or dengue fever it is important that you do not ignore symptoms of fever.  Seek medical help.  When you attend the health facility wear a mask if possible, keep at least 1 metre distant from other people and do not touch surfaces with your hands. If it is a child who is sick help the child stick to this advice.'
    },
    {
      'question': 'Can children or adolescents catch COVID-19?',
      'answer': 'Research indicates that children and adolescents are just as likely to become infected as any other age group and can spread the disease.'
          'Evidence to date suggests that children and young adults are less likely to get severe disease, but severe cases can still happen in these age groups.'
          'Children and adults should follow the same guidance on self-quarantine and self-isolation if there is a risk they have been exposed or are showing symptoms. It is particularly important that children avoid contact with older people and others who are at risk of more severe disease.'
    },
    {
      'question':
          'What can I do to protect myself and prevent the spread of disease?',
      'answer': 'Stay aware of the latest information on the COVID-19 outbreak, available on the WHO website and through your national and local public health authority. Most countries around the world have seen cases of COVID-19 and many are experiencing outbreaks. Authorities in China and some other countries have succeeded in slowing their outbreaks. However, the situation is unpredictable so check regularly for the latest news.'
          'You can reduce your chances of being infected or spreading COVID-19 by taking some simple precautions:'
          'Regularly and thoroughly clean your hands with an alcohol-based hand rub or wash them with soap and water. Why? Washing your hands with soap and water or using alcohol-based hand rub kills viruses that may be on your hands.'
          'Maintain at least 1 metre distance between yourself and others. Why? When someone coughs, sneezes, or speaks they spray small liquid droplets from their nose or mouth which may contain virus. If you are too close, you can breathe in the droplets, including the COVID-19 virus if the person has the disease.'
          'Avoid going to crowded places. Why? Where people come together in crowds, you are more likely to come into close contact with someone that has COVID-19 and it is more difficult to maintain physical distance of 1 metre.'
          'Avoid touching eyes, nose and mouth. Why? Hands touch many surfaces and can pick up viruses. Once contaminated, hands can transfer the virus to your eyes, nose or mouth. From there, the virus can enter your body and infect you.'
          'Make sure you, and the people around you, follow good respiratory hygiene. This means covering your mouth and nose with your bent elbow or tissue when you cough or sneeze. Then dispose of the used tissue immediately and wash your hands. Why? Droplets spread virus. By following good respiratory hygiene, you protect the people around you from viruses such as cold, flu and COVID-19.'
          'Stay home and self-isolate even with minor symptoms such as cough, headache, mild fever, until you recover. Have someone bring you supplies. If you need to leave your house, wear a mask to avoid infecting others. Why? Avoiding contact with others will protect them from possible COVID-19 and other viruses.'
          'If you have a fever, cough and difficulty breathing, seek medical attention, but call by telephone in advance if possible and follow the directions of your local health authority. Why? National and local authorities will have the most up to date information on the situation in your area. Calling in advance will allow your health care provider to quickly direct you to the right health facility. This will also protect you and help prevent spread of viruses and other infections.'
          'Keep up to date on the latest information from trusted sources, such as WHO or your local and national health authorities. Why? Local and national authorities are best placed to advise on what people in your area should be doing to protect themselves.'
    },
    {
      'question': 'Is there a vaccine, drug or treatment for COVID-19?',
      'answer': 'While some western, traditional or home remedies may provide comfort and alleviate symptoms of mild COVID-19, there are no medicines that have been shown to prevent or cure the disease. WHO does not recommend self-medication with any medicines, including antibiotics, as a prevention or cure for COVID-19. However, there are several ongoing clinical trials of both western and traditional medicines. WHO is coordinating efforts to develop vaccines and medicines to prevent and treat COVID-19 and will continue to provide updated information as soon research results become available.'
          'The most effective ways to protect yourself and others against COVID-19 are to:'
          'Clean your hands frequently and thoroughly'
          'Avoid touching your eyes, mouth and nose'
          'Cover your cough with the bend of elbow or tissue. If a tissue is used,discard it immediately and wash your hands.'
          'Maintain a distance of at least 1 metre from others. '
    },
    {
      'question': 'How to properly wear a medical mask?',
      'answer': 'If you choose to wear a mask:'
          '1.Before touching the mask, clean hands with an alcohol-based hand rub or soap and water'
          '2.Take the mask and inspect it for tears or holes.'
          '3.Orient which side is the top side (where the metal strip is).'
          '4.Ensure the proper side of the mask faces outwards (the coloured side).'
          '5.Place the mask to your face. Pinch the metal strip or stiff edge of the mask so it moulds to the shape of your nose.'
          '6.Pull down the mask’s bottom so it covers your mouth and your chin.'
          '7.Do not touch the mask while you are wearing it for protection.'
          '8.After use, take off the mask with clean hands; remove the elastic loops from behind the ears while keeping the mask away from your face and clothes, to avoid touching potentially contaminated surfaces of the mask.'
          '9.Discard the mask in a closed bin immediately after use. Do not reuse the mask.'
          '10.Perform hand hygiene after touching or discarding the mask – Use alcohol-based hand rub or, if visibly soiled, wash your hands with soap and water.'
          'Be aware that there is a global shortage of medical masks (both surgical masks and N95 masks). These should be reserved as much as possible for health care workers.'
          'Remember that  masks are not a substitute for other, more effective ways to protect yourself and others against COVID-19 such as frequently washing your hands, covering your cough with the bend of elbow or tissue and maintain a distance of at least 1 meter from others.'
    },
    {
      'question':
          'How long does it take after exposure to COVID-19 to develop symptoms?',
      'answer':
          'The time between exposure to COVID-19 and the moment when symptoms start is commonly around five to six days but can range from 1 – 14 days.'
    },
    {
      'question': 'What is the connection between COVID-19 and animals?',
      'answer': 'COVID-19 is spread through human-to-human transmission.'
          'We already know a lot about other viruses in the CoronaVirus family and most of these types of viruses have an origin in animals. The COVID-19 virus (also called SARS-CoV-2) is a new virus in humans. The possible animal source of COVID-19 has not yet been confirmed but research is ongoing.'
    },
    {
      'question': 'Can I catch COVID-19 from my pet or other animals?',
      'answer': 'Several dogs and cats (domestic cats and tigers) in contact with infected humans have tested positive for COVID-19. In addition, ferrets appear to be susceptible to the infection. In experimental conditions, both cats and ferrets were able to transmit infection to other animals of the same species. However, there is no evidence that these animals can transmit the disease to humans and spread COVID-19. COVID-19 is mainly spread through droplets produced when an infected person coughs, sneezes, or speaks.'
          'Minks raised in farms have also been detected with the virus. Most likely, they have been infected by farm workers. In a few instances, the minks that were infected by humans have transmitted the virus to other people. These are the first reported cases of animal-to-human transmission.'
          'It is still recommended that people who are sick with COVID-19 and people who are at risk limit contact with companion and other animals. When handling and caring for animals, basic hygiene measures should always be implemented. This includes hand washing after handling animals, their food or supplies, as well as avoiding kissing, licking or sharing food.'
    },
    {
      'question': 'How long does the virus survive on surfaces?',
      'answer':
          'The most important thing to know about CoronaVirus on surfaces is that they can easily be cleaned with common household disinfectants that will kill the virus. Studies have shown that the COVID-19 virus can survive for up to 72 hours on plastic and stainless steel, less than 4 hours on copper and less than 24 hours on cardboard.'
              'As, always clean your hands with an alcohol-based hand rub or wash them with soap and water. Avoid touching your eyes, mouth, or nose.'
    },
    {
      'question':
          'Are antibiotics effective in preventing or treating COVID-19?',
      'answer':
          'No. Antibiotics do not work against viruses; they only work on bacterial infections. COVID-19 is caused by a virus, so antibiotics do not work. Antibiotics should not be used as a means of prevention or treatment of COVID-19. In hospitals physicians will sometimes use antibiotics to prevent or treat secondary bacterial infections which can be a complication of COVID-19 in severely ill patients. They should only be used as directed by a physician to treat a bacterial infection.'
    },
    {
      'question':
          'Can I catch COVID-19 from the faeces of someone with the disease?',
      'answer':
          'While initial investigations suggest the virus may be present in faeces in some cases, to date, there have not been reports of faecal-oral transmission of COVID-19. Additionally, there is no evidence to date on the survival of the COVID-19 virus in water or sewage.'
    },

    //Section: 03.COMPLICATIONS AND ASSOCIATED SYNDROMES
    {
      'question': 'SECTION: 03.  COMPLICATIONS AND ASSOCIATED SYNDROMES',
      'answer': ''
    },

    {
      'question':
          'What are the major cardiac complications in patients with COVID-19? And how often do they occur?',
      'answer': 'Cardiac manifestations are common in hospitalized patients and occur most frequently in critically ill patients. The most common complications are listed here:'
          '  Cardiac troponin elevation, which is a biomarker of myocardial injury, occurs in approximately 10 to 35 percent of hospitalized patients. In the majority of these patients, cardiac signs and symptoms are not present and the cause of the troponin rise is not acute myocardial infarction (MI). However, patients with a clinical presentation (including history or electrocardiogram) suggestive of acute MI require prompt evaluation and treatment.'
          "Usually, troponin elevation in COVID-19 patients is due to other causes of myocardial injury including stress cardiomyopathy, hypoxic injury, myocarditis, right heart strain, microvascular dysfunction, and systemic inflammatory response syndrome. For those without suspected acute MI, further evaluation is focused on testing expected to impact management."
          "   The following complications may occur with or without troponin elevation:   "
          "Arrhythmias have been reported in approximately 5 to 20 percent of hospitalized cases, and most are asymptomatic. Causes may include hypoxia, electrolyte abnormalities, myocardial injury, and drug effects (such as QT-prolonging agents)."
          "   Heart failure is the most common symptomatic cardiac complication. Data on its incidence are limited; however, its presence is associated with increased mortality. Heart failure in patients with COVID-19 may be precipitated by acute illness in patients with pre-existing known or undiagnosed heart disease (eg, coronary artery disease or hypertensive heart disease) or incident acute myocardial injury (eg, stress cardiomyopathy or acute MI)."
    },
    {
      'question':
          'What are the major thrombotic complications in patients with COVID-19?',
      'answer':
          'COVID-19 is a hypercoagulable state associated with an increased risk of venous thromboembolism (VTE; including deep vein thrombosis and pulmonary embolism) and arterial thrombosis, including stroke, myocardial infarction, and possibly limb ischemia. The risk is highest in individuals in the intensive care unit (ICU), often despite prophylactic anticoagulation. Bleeding is not common but has been seen, especially in the setting of trauma and/or anticoagulation.'
    },
    {
      'question':
          'What are the most common dermatologic syndromes associated with COVID-19?',
      'answer':
          'The most common cutaneous findings reported in patients with COVID-19 include an exanthematous (morbilliform) rash, pernio-like acral lesions, livedo-like lesions, retiform purpura, necrotic vascular lesions, urticaria, vesicular (varicella-like) eruptions, and erythema multiforme-like lesions. An erythematous, polymorphic rash has also been associated with a related multisystem inflammatory syndrome in children. The frequency of cutaneous findings is estimated to range from less than 1 percent to 20 percent of patients with COVID-19.'
    },
    {
      'question':
          'What is multisystem inflammatory syndrome associated with COVID-19?',
      'answer':
          'Multisystem inflammatory syndrome in children (MIS-C) is a rare but serious condition that has been reported in patients with current or recent COVID-19 infection or exposure. It shares clinical features with Kawasaki disease (KD), KD shock, and toxic shock syndrome. '
    },
    {
      'question': 'What is "long-COVID"?',
      'answer':
          '"Long-COVID," also referred to as post-COVID conditions, post-COVID syndrome, or postacute sequelae of SARS-CoV-2 infection (PASC), generally refers to symptoms that develop during or after acute COVID-19 illness, continue for ≥2 months (ie, 3 months from symptom onset), and are not explained by an alternative diagnosis. It is not yet known whether "long-COVID" represents a new syndrome unique to COVID-19 or overlaps with recovery from similar illnesses.'
    },

    //CLINICAL EVALUATION
    {'question': 'SECTION: 04. CLINICAL EVALUATION', 'answer': ''},

    {
      'question':
          'Is there a way to distinguish COVID-19 clinically from other respiratory illnesses, particularly influenza?',
      'answer':
          'No, the clinical features of COVID-19 overlap substantially with influenza and other respiratory viral illnesses. There is no way to distinguish among them without testing.'
    },
    {
      'question':
          'When should patients with confirmed or suspected COVID-19 be advised to stay at home? Have an in-person clinical evaluation?',
      'answer':
          'Home management is appropriate for most patients with mild symptoms (eg, fever, cough, and/or myalgias without dyspnea), provided they can be adequately isolated, monitored, and supported in the outpatient setting.      Patients being managed at home should be educated about the potential for worsening disease and advised to closely monitor for symptoms of more serious disease, including dyspnea or persistent chest pain. The development of these symptoms should prompt clinical evaluation and possible hospitalization. '
    },

    //Section: 05. LABORATORY EVALUATION
    {'question': 'SECTION: 05. LABORATORY EVALUATION', 'answer': ''},
    {
      'question':
          'What laboratory abnormalities are commonly seen in patients with COVID-19?',
      'answer': 'Common laboratory abnormalities among hospitalized patients with COVID-19 include: '
          '● Lymphopenia'
          ' ● Elevated aminotransaminase levels'
          '  ● Elevated lactate dehydrogenase levels'
          '  ● Elevated inflammatory markers (eg, ferritin, C-reactive protein, and erythrocyte sedimentation rate)'
          'Abnormalities in coagulation testing, elevated procalcitonin levels, and elevated troponin levels have also been reported.'
    },
    {
      'question':
          'What are the major coagulation abnormalities in patients with COVID-19?',
      'answer':
          'A number of laboratory abnormalities have been reported, including high fibrinogen and D-dimer and mild prolongation of the prothrombin time (PT) and activated partial thromboplastin time (aPTT). Abnormal coagulation studies are mainly used to monitor clinical status and to help determine level of care. Very high D-dimer is associated with a high mortality rate. Atypical findings (eg, severe thrombocytopenia) should be further evaluated.'
    },

//Section: 06. DIAGNOSTIC TESTING
    {'question': 'SECTION: 06. DIAGNOSTIC TESTING', 'answer': ''},
    {
      'question': 'What are the different types of tests for COVID-19?',
      'answer': 'There are three major types of tests for COVID-19'
          '●  Nucleic acid amplifications tests (NAATs; eg, reverse transcription polymerase chain reaction [RT-PCR]) – RT-PCR for SARS-CoV-2 is the primary test used to diagnose active COVID-19. The test is performed primarily on upper respiratory specimens (including nasopharyngeal swabs, nasal swabs, and saliva) but can also be performed on lower respiratory tract samples. Sensitivity and specificity are generally high, although performance varies based on the specific assay used, specimen quality, and duration of illness.'
          '● Antigen tests – Antigen tests can also be used to diagnosis active infection. Antigen tests are less sensitive than NAATs, and their performance varies by the specific antigen test. These tests are typically performed on nasopharyngeal or nasal swabs.'
          '●  Serology – Serologic tests measure antibodies to SARS-CoV-2 and are primarily used to identify patients who have had COVID-19 in the past as well as patients with current infection who have had symptoms for three to four weeks. Sensitivity and specificity are highly variable, and cross-reactivity with other coronaviruses has been reported.'
    },
    {
      'question':
          'How accurate is RT-PCR for SARS-CoV-2? Should two tests be performed or one?',
      'answer':
          '●   A positive RT-PCR for SARS-CoV-2 generally confirms the diagnosis of COVID-19. However, false-negative tests from upper respiratory specimens have been well documented. If initial testing is negative, but the suspicion for COVID-19 remains, and determining the presence of infection is important for management or infection control, we suggest repeating the test. For hospitalized patients with evidence of lower respiratory tract involvement, the repeat test can be performed on expectorated sputum or a tracheal aspirate, if available.'
              ' ●   In settings where testing is not readily available, the diagnosis of COVID-19 can be made presumptively based on a compatible clinical presentation in the setting of an exposure risk, particularly when no other cause of the symptoms is evident. '
    },

    {
      'question':
          'What are the indications for testing asymptomatic individuals?',
      'answer':
          'Indications for testing asymptomatic individuals include close contact with an individual with COVID-19, screening in congregate settings (eg, long-term care facilities, correctional and detention facilities, homeless shelters), and screening hospitalized patients in high-prevalence regions. Screening may also be indicated prior to time-sensitive surgical procedures or aerosol-generating procedures and prior to receiving immunosuppression. If resources allow, the United States Centers for Disease Control and Prevention (CDC) suggests serial testing of select groups of asymptomatic individuals (eg, residents and staff in congregate settings, workers with public interactions or large numbers of close contacts) to help prevent transmission by quickly identifying cases so that infected individuals can be isolated and contacts quarantined.'
    },

//Section: 07. HOME CARE
    {'question': 'SECTION: 07. HOME CARE', 'answer': ''},
    {
      'question':
          'Are there any COVID-19-specific therapies available for non-hospitalized patients?',
      'answer': 'Among adult outpatients with mild to moderate COVID-19 and risk factors for progression to severe disease (table 3), we recommend treatment with COVID-19-specific therapy. We do not use COVID-19-specific therapy for individuals without risk factors or in those with asymptomatic SARS-CoV-2 infection.'
          '●  We recommend nirmatrelvir-ritonavir, monoclonal antibody therapy active against circulating variants (table 1), or remdesivir as first-line therapies. Each treatment has been demonstrated to substantially reduce the risk of hospitalization (and with some interventions, mortality) in outpatients with mild to moderate COVID-19 and risk factors for progression to severe disease. The choice between therapies depends upon local availability, ease of prompt access to treatment (as all therapies must be given early in the course of illness), susceptibility to prevalent viral variants, and specific patient factors (eg, comorbid conditions, potential drug-drug interactions with nirmatrelvir-ritonavir). Additionally, monoclonal antibodies and remdesivir are administered parenterally, which may be operationally complicated in many outpatient settings.'
          '●   If nirmatrelvir-ritonavir, monoclonal antibody therapy, and remdesivir are not feasible options, molnupiravir is an alternative. However, it may not be as effective as the other interventions, and there are other safety considerations.'
          '●   The Omicron variant appears to escape neutralization by casirivimab-imdevimab and bamlanivimab-etesevimab but is expected to remain susceptible to sotrovimab. We agree with the National Institutes of Health (NIH), which recommends against the use of casirivimab-imdevimab and bamlanivimab-etesevimab in areas where Omicron is the prevalent variant, and these two agents are no longer authorized for use where COVID-19 infection is likely due to nonsusceptible SARS-CoV-2 variants.'
          '●   When the incidence of SARS-CoV-2 infection is high, supplies of these agents (and the resources required to administer them) may be insufficient to offer treatment to all eligible patients. In such circumstances, these treatments should be prioritized for individuals most likely to benefit (ie, immunocompromised individuals who are likely to have a suboptimal response to vaccination, and unvaccinated or incompletely vaccinated individuals with the highest risk for progression to severe disease)'
    },
    {
      'question':
          'What advice should be given to patients with known or presumed COVID-19 managed at home?',
      'answer': 'For most patients with COVID-19 who are managed at home, we advise the following:   '
          '●  Supportive care with antipyretics/analgesics (eg, acetaminophen) and hydration'
          '● Close contact with their health care provider'
          '●  Monitoring for clinical worsening, particularly the development of new or worsening dyspnea, which should prompt clinical evaluation and possible hospitalization '
          '●  Separation from other household members, including pets (eg, staying in a separate room when possible and wearing a mask when in the same room)'
          '●  Frequent hand washing for all family members'
          '●  Frequent disinfection of commonly touched surfaces'
    },
    {
      'question': 'How long should patients cared for at home stay isolated?',
      'answer': 'For symptomatic immunocompetent patients with mild disease who are cared for at home, isolation can usually be discontinued when the following criteria are met:'
          '●At least five days have passed since symptoms first appeared AND'
          '●At least one day (24 hours) has passed since resolution of fever without the use of fever-reducing medications AND'
          '●There is improvement in symptoms (eg, cough, shortness of breath)'
          'After discontinuing home isolation, patients should continue to wear a well-fitting mask around others. The total duration of isolation plus strict masking is 10 days. During this time, patients should avoid people who are immunocompromised or at high risk for severe disease. Additional information on restrictions (eg, travel) after the five-day isolation period can be found on the CDC website.'
          'For patients who did not have symptoms at the time of laboratory-confirmed SARS-CoV-2 infection, home isolation can usually be discontinued when at least five days have passed since the positive COVID-19 test (followed by strict mask wearing for an additional five days), as long as there was no evidence of subsequent illness.'
          'Although this strategy can be used for many patients, home isolation should continue for a total of 10 days if a viral test was performed toward the end of the five-day isolation and is positive, if strict mask wearing is not possible, or if the patient had moderate disease.'
    },
    {
      'question':
          'What is the significance of a persistently positive RT-PCR for weeks after illness?',
      'answer':
          'Patients diagnosed with COVID-19 can have detectable SARS-CoV-2 RNA in upper respiratory tract specimens for weeks after the onset of symptoms. However, prolonged viral RNA detection does not necessarily indicate prolonged infectiousness. According to the CDC, isolation of infectious virus more than 10 days after illness onset is rare in patients whose symptoms have resolved.'
              'here is no standardized approach to management of patients with persistently positive reverse transcription polymerase chain reaction (RT-PCR) 10 days or more after resolution of symptoms. However, such patients are generally felt to have low infectiousness, particularly after mild to moderate disease and in the absence of immunocompromise. This is why symptom- and time-based approaches for discontinuation of precautions are recommended for most patients. '
    },
//SECTION: 08. HOSPITAL CARE
    {'question': 'SECTION: 08. HOSPITAL CARE', 'answer': ''},
    {
      'question': 'What is the preferred approach to oxygenation?',
      'answer': 'As a general approach, we target a peripheral oxygen saturation between 90 and 96 percent using the lowest possible fraction of inspired oxygen. We also encourage patients to self-prone, when possible, based on data that suggest improved oxygenation and minimal downside to proning.'
          '●For most patients, we use low-flow oxygen (eg, low-flow nasal cannula, simple face mask), which minimizes risk of viral aerosolization. Because exertional desaturation is common and can be profound, providing additional support with activity (eg, going to the bathroom) may be needed.'
          '●For those with acute hypoxemic respiratory failure and higher oxygen needs than low-flow oxygen can provide, we suggest selective use of noninvasive measures rather than routinely proceeding directly to intubation. Among the noninvasive modalities, we prefer high-flow nasal cannula (HFNC) over noninvasive ventilation (NIV), unless there is separate indication for NIV (eg, acute exacerbation of chronic obstructive pulmonary disease, heart failure).'
          '●We have a low threshold for intubation in patients who have any of the following: rapid progression over a few hours; failure to improve despite HFNC >60 L/min and FiO2 >0.6; development of hypercapnia; and/or hemodynamic instability or multiorgan failure.'
          '●When mechanical ventilation is required, we use low tidal volume ventilation (LTVV) targeting ≤6 mL/kg predicted body weight (PBW; range 4 to 8 mL/kg PBW (table 7 and table 8)) that targets a plateau pressure ≤30 cm H2O and applies positive end-expiratory pressure (PEEP) as outlined in the table (table 9).'
          '●For patients with COVID-19 who fail LTVV, prone ventilation is the preferred next step (table 10 and table 11).'
          '●For those who fail LTVV and prone ventilation, rescue strategies include alveolar recruitment maneuvers, high PEEP, neuromuscular blocking agents, inhaled pulmonary vasodilators, and, rarely, extracorporeal membrane oxygenation.'
    },
    {
      'question':
          'When are antiviral treatment, glucocorticoids, and other COVID-19-specific therapies indicated? And which agents are preferred?',
      'answer': 'Our approach to COVID-19-specific therapy in hospitalized patients depends on the presence of hypoxia (O2 saturation ≤94 percent on room air), need for oxygenation or ventilatory support, and the patients’ clinical and laboratory risk factors for severe disease (algorithm 2).'
          '●For patients who do not require oxygen and do not have clinical (table 3) or laboratory (table 12) risk factors for severe disease, care is primarily supportive, with close monitoring for disease progression.'
          '●For patients who do not require oxygen but have clinical (table 3) or laboratory (table 12) risk factors for severe disease and were hospitalized for COVID-19, we suggest remdesivir. Individuals who have risk factors but were hospitalized for other reasons (ie, have incidental SARS-CoV-2 infection) may be eligible for therapies authorized for high-risk outpatients (eg, monoclonal antibodies, nirmatrelvir-ritonavir, remdesivir).'
          '●For patients who are receiving low-flow supplemental oxygen, we suggest low-dose dexamethasone and remdesivir. For those who have significantly elevated inflammatory markers (eg, C-reactive protein [CRP] level ≥75 mg/L), have increasing oxygen requirements despite dexamethasone, and are within 96 hours of hospitalization, we suggest adding tocilizumab or baricitinib. If supplies of tocilizumab or baricitinib are limited, we prioritize them for more severely ill patients on higher levels of oxygen support. For immunocompromised patients, we also evaluate whether monoclonal antibody therapy is available through an investigational new drug application.'
          '●For hospitalized patients who are receiving high-flow supplemental oxygen or noninvasive ventilation, we recommend low-dose dexamethasone. For those who are within 24 to 48 hours of admission to an intensive care unit (ICU) or receipt of ICU-level care (and within 96 hours of hospitalization), we suggest adding tocilizumab or baricitinib. We also suggest adding remdesivir.'
          '●For hospitalized patients who require mechanical ventilation or extracorporeal membrane oxygenation, we recommend low-dose dexamethasone. For those who are within 24 to 48 hours of admission to an ICU (and within 96 hours of hospitalization), we suggest adding tocilizumab. We suggest not routinely using remdesivir in this population.'
          '●If dexamethasone is not available, other glucocorticoids at equivalent doses are reasonable alternatives.'
          'In addition to these therapies (or if individual patients cannot take these therapies), we refer them to a clinical trial for other therapies when available. Other investigational therapies include other antiviral agents, cytokine and kinase inhibitors, and other immunomodulatory agents. Clinicians may also be able to obtain convalescent plasma for use outside a trial setting; however, we suggest not using convalescent plasma for mechanically ventilated patients and not using it outside the context of clinical trials for most other hospitalized patients because of lack of clear benefit. We generally do not use other agents off label for treatment of COVID-19. In particular, we suggest not using hydroxychloroquine, chloroquine, or ivermectin, given the lack of benefit and potential for toxicity. (See "COVID-19: Management in hospitalized adults" and "COVID-19: Management in hospitalized adults", section on COVID-19-specific therapy.)'
    },
    // {'question': '', 'answer': ''},
    // {'question': '', 'answer': ''},

    // subject : VACCINES, BIOLOGICS, HUMAN TISSUES, AND BLOOD PRODUCTS
    {
      'question':
          'SECTION: 09. VACCINES, BIOLOGICS, HUMAN TISSUES, AND BLOOD PRODUCTS',
      'answer': ''
    },
    {
      'question': 'Q: How do I report COVID-19 vaccine side effects?',
      'answer':
          'A: If you experience a severe allergic reaction or any life-threatening symptoms such as trouble breathing, call 911, or go to the nearest hospital. Call the vaccination provider or your health care provider if you have any side effects that bother you or do not go away. Report vaccine side effects to FDA/CDC Vaccine Adverse Event Reporting System (VAERS). The VAERS toll-free number is 1-800-822-7967 or report online to https://vaers.hhs.gov/reportevent.html. Please include the name of the vaccine in the first line of box #18 of the report form. '
    },
    {
      'question':
          'Q: Does COVID-19 present a risk to the safety of the nation’s blood supply?',
      'answer':
          'A: In general, respiratory viruses are not known to be transmitted by blood transfusion, and there have been no reported cases of transfusion-transmitted coronavirus.'
    },
    {
      'question':
          'Q: Can SARS-CoV-2, the virus that causes COVID-19, be transmitted by blood transfusion?',
      'answer':
          'A: In general, respiratory viruses are not known to be transmitted by blood transfusion, and there have been no reported cases of transfusion-transmitted coronavirus.'
    },
    {
      'question':
          'Q: What steps are being taken to protect the U.S. blood supply from SARS-CoV-2, the virus that causes COVID-19?',
      'answer':
          'A: Blood donors must be healthy and feel well on the day of donation. Routine blood donor screening measures that are already in place should prevent individuals with respiratory infections from donating blood. For example, blood donors must be in good health and have a normal temperature on the day of donation.  Donors are instructed to contact the donor center if they become ill after donation, so that their blood or plasma will not be used. Even when a donor develops COVID-19 after donation, however, there have been no cases of COVID-19 linked to donor blood or products made from blood.   '
    },
    {
      'question':
          'Q: What is convalescent plasma and why is it being investigated to treat COVID-19?',
      'answer':
          'A: Convalescent refers to anyone recovering from a disease. Plasma is the yellow, liquid part of blood that contains antibodies. Antibodies are proteins made by the body in response to infections. Convalescent plasma from patients who have already recovered from coronavirus disease 2019 (COVID-19) may contain antibodies against COVID-19.'
    },
    {'question': 'SECTION: 10. DRUGS (MEDICINES)', 'answer': ''},
    {
      'question': 'Q: What is a monoclonal antibody?',
      'answer':
          'A: Monoclonal antibodies are laboratory-produced molecules that act as substitute antibodies that can restore, enhance or mimic the immune systems attack on cells. Monoclonal antibodies for COVID-19 may block the virus that causes COVID-19 from attaching to human cells, making it more difficult for the virus to reproduce and cause harm. Monoclonal antibodies may also neutralize a virus. '
    },
    {'question': '', 'answer': ''},
  ];
}
