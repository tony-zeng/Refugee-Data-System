SELECT * FROM c01web.needsandassessment;CREATE TABLE `needsandassessment` (
  `unique_identifier` varchar(255) NOT NULL,
  `unique_identifier_value` varchar(255) NOT NULL,
  `date_of_birth` varchar(255) NOT NULL,
  `postal_code_where_the_service_was_recieved` varchar(255) NOT NULL,
  `start_date_of_assessment` varchar(255) NOT NULL,
  `language_of_service` varchar(255) NOT NULL,
  `official_language_of_preference` varchar(255) NOT NULL,
  `type_of_institution` varchar(255) NOT NULL,
  `referred_by` varchar(255) NOT NULL,
  `increase_knowledge_of_life_in_canada` tinyint(1) NOT NULL,
  `increase_knowledge_of_life_in_canada_referrals` tinyint(1) NOT NULL,
  `increase_knowledge_of_com_and_gov_services` tinyint(1) NOT NULL,
  `increase_knowledge_of_com_and_gov_services_referrals` tinyint(1) NOT NULL,
  `increase_knowledge_of_working_in_canada` tinyint(1) NOT NULL,
  `increase_knowledge_of_working_in_canada_referrals` tinyint(1) NOT NULL,
  `increase_knowledge_of_education_in_canada` tinyint(1) NOT NULL,
  `increase_knowledge_of_education_in_canada_referrals` tinyint(1) NOT NULL,
  `increase_following_social_networks` tinyint(1) NOT NULL,
  `increase_following_social_networks_referrals` tinyint(1) NOT NULL,
  `increase_following_professional_networks` tinyint(1) NOT NULL,
  `increase_following_professional_networks_referrals` tinyint(1) NOT NULL,
  `increase_following_access_to_local_community_services` tinyint(1) NOT NULL,
  `increase_following_access_to_local_community_services_referrals` tinyint(1) NOT NULL,
  `increase_following_level_of_community_involvement` tinyint(1) NOT NULL,
  `increase_following_level_of_community_involvement_referrals` tinyint(1) NOT NULL,
  `improve_language_skills` tinyint(1) NOT NULL,
  `improve_language_skills_referrals` tinyint(1) NOT NULL,
  `improve_language_skill_to` varchar(255) NOT NULL,
  `improve_other_skills` tinyint(1) NOT NULL,
  `improve_other_skills_referrals` tinyint(1) NOT NULL,
  `improve_other_skills_to` varchar(255) NOT NULL,
  `find_employment` tinyint(1) NOT NULL,
  `find_employment_referrals` tinyint(1) NOT NULL,
  `find_employment_timeframe` varchar(255) NOT NULL,
  `find_employment_mimimum_one_year_experience` tinyint(1) NOT NULL,
  `find_employment_intends_occupation_NOC_skill_level` varchar(255) NOT NULL,
  `find_employment_intends_credential_regonition_and_license` tinyint(1) NOT NULL,
  `client_intends_to_become_citizen` tinyint(1) NOT NULL,
  `support_services_may_be_required` tinyint(1) NOT NULL,
  `care_fore_newcomer_children` tinyint(1) NOT NULL,
  `transportation` tinyint(1) NOT NULL,
  `provisions_for_disabilities` tinyint(1) NOT NULL,
  `translation` tinyint(1) NOT NULL,
  `interpretation` tinyint(1) NOT NULL,
  `crisis_counselling` tinyint(1) NOT NULL,
  `non_IRRC_program_services_needed` tinyint(1) NOT NULL,
  `food_clothing_other_material_needs` tinyint(1) NOT NULL,
  `food_clothing_other_material_needs_referrals` tinyint(1) NOT NULL,
  `housing_accommodation` tinyint(1) NOT NULL,
  `housing_accommodation_referrals` tinyint(1) NOT NULL,
  `health_mental_health_wellbeing` tinyint(1) NOT NULL,
  `health_mental_health_wellbeing_referrals` tinyint(1) NOT NULL,
  `financial` tinyint(1) NOT NULL,
  `financial_referrals` tinyint(1) NOT NULL,
  `family_support` tinyint(1) NOT NULL,
  `family_support_referrals` tinyint(1) NOT NULL,
  `language_nonIRCC` tinyint(1) NOT NULL,
  `language_nonIRCC_referrals` tinyint(1) NOT NULL,
  `education_skills_development` tinyint(1) NOT NULL,
  `education_skills_development_referrals` tinyint(1) NOT NULL,
  `employment_related` tinyint(1) NOT NULL,
  `employment_related_referrals` tinyint(1) NOT NULL,
  `legal_information_and_services` tinyint(1) NOT NULL,
  `legal_information_and_services_referrals` tinyint(1) NOT NULL,
  `community_services` tinyint(1) NOT NULL,
  `community_services_referrals` tinyint(1) NOT NULL,
  `support_services_received` tinyint(1) NOT NULL,
  `care_for_newcomer_children2` tinyint(1) NOT NULL,
  `child1_age` varchar(255) NOT NULL,
  `child1_type_of_care` varchar(255) NOT NULL,
  `child2_age` varchar(255) NOT NULL,
  `child2_type_of_care` varchar(255) NOT NULL,
  `child3_age` varchar(255) NOT NULL,
  `child3_type_of_care` varchar(255) NOT NULL,
  `child4_age` varchar(255) NOT NULL,
  `child4_type_of_care` varchar(255) NOT NULL,
  `child5_age` varchar(255) NOT NULL,
  `child5_type_of_care` varchar(255) NOT NULL,
  `child_transportation` tinyint(1) NOT NULL,
  `child_provisions_for_disabilities` tinyint(1) NOT NULL,
  `child_translation` tinyint(1) NOT NULL,
  `child_translation_between` varchar(255) NOT NULL,
  `child_translation_and` varchar(255) NOT NULL,
  `child_interpretation` tinyint(1) NOT NULL,
  `child_interpretation_between` varchar(255) NOT NULL,
  `child_interpretation_and` varchar(255) NOT NULL,
  `child_crisis_counselling` tinyint(1) NOT NULL,
  `settlement_plan_compeleted_and_shared_with_client` tinyint(1) NOT NULL,
  `end_date_of_assessment_YYYY_MM_DD` varchar(255) NOT NULL,
  `reason_for_update` varchar(255) NOT NULL,
  PRIMARY KEY (`unique_identifier`,`unique_identifier_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
