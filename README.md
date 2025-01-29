# French-Job-Market-Analysis-using-SQL
The program includes use of SQL to evaluate the jobs in France using a sample dataset from kaggle.

*(English Version)*

**Project: Job Market Analysis in France Using SQL**

In this project, I conducted an in-depth analysis of the French job market using a dataset sourced from Kaggle. The dataset included information on employment statistics, salaries, population demographics, and geographic data across various towns and regions in France. The goal was to analyze employment trends, salary data, and demographic information to derive meaningful insights into the job market, including factors such as salary differences, employment by firm size, and population distributions across regions.

**Key Contributions & Achievements:**

**Data Preparation & Transformation:**

1-**Data Type Management:** Utilized SQL commands to view and alter the data types of various columns in the tables. For example, I changed column types from integers to floats to accommodate decimal values and ensure accurate analysis, especially in salary and population-related columns.

2-**Data Cleaning:** Applied data cleaning techniques, including trimming leading or trailing spaces from geographic codes and ensuring that the codes were in uppercase to maintain consistency across the dataset.

3-**Handling Missing Data:** Employed SQL functions like COALESCE to handle NULL values, replacing them with default values such as 0 to ensure complete datasets for analysis.

**Exploratory Data Analysis (EDA):**

1-**Population Demographics Analysis:** Analyzed the population data to assess the number of males and females and calculated total population by age group.

2-**Employment Trends:** Calculated the total number of firms by town and summed firms by size categories (e.g., firms with 1-5 employees, firms with 100-199 employees, etc.). This helped uncover the distribution of firms based on their size across different towns and regions.

3-**Salary Analysis:** Investigated salary data by calculating the average net salary for each town and categorized by job type (e.g., executive, middle manager, employee, worker). Additionally, I examined the average net salary for men and women based on different age groups, uncovering gender-based salary disparities.

**Advanced SQL Queries & Joins:**

1-**Inner Joins:** Used inner joins to combine employment data (firm size) with salary data, providing insights into how firm size correlates with salary levels in different regions.

2-**Left and Right Joins:** Applied left joins to merge population demographics with geographic data, and right joins to merge firm size data with population data, allowing for comprehensive insights across different dimensions of the dataset.

3-**Full Outer Joins:** Implemented full outer joins to merge all available data, ensuring no data was left out, even if it didn't have matching values across all tables.

**Key Insights Derived:**

1-**Geographic Employment Distribution:** Identified the total number of firms and their distribution based on firm size in major cities like Paris and Rouen.

2-**Salary Disparities:** The analysis revealed significant differences in salaries based on job categories, gender, and age groups.

3-**Regional Differences:** Discovered regional variations in firm sizes and population demographics, with some regions showing higher concentrations of large firms and others having a higher proportion of small firms.

4-**Employment and Demographics:** The various joins provided insights into the relationships between demographic factors (e.g., age and gender) and firm sizes, giving a clearer picture of how the job market functions across the country.

**Key Learnings & Impact:**

1-**SQL Proficiency:** Strengthened my SQL skills, particularly in data manipulation, query optimization, and using advanced SQL functions (like COALESCE, TRIM, and UPPER) to clean and transform data for analysis.

2-**Data Analysis and Reporting:** Gained valuable experience in using SQL for exploratory data analysis and reporting, providing actionable insights into the French job market.

3-**Understanding Employment Trends:** Learned to identify key employment trends, such as the distribution of firms by size, and how demographic factors influence salary and employment opportunities.

4-**Joins and Data Integration:** Enhanced my ability to integrate data from multiple sources and perform complex joins (inner, left, right, and full outer) to provide more comprehensive insights.

5-**Real-World Applications:** This project provided me with practical experience in working with real-world datasets, allowing me to apply my technical skills to solve complex business problems related to employment, demographics, and salary analysis.

Through this project, I developed a deeper understanding of how data analytics, particularly SQL, can be used to analyze and interpret job market trends and contribute to better decision-making in business and policy planning.

*(French Version)*

**Projet: Job Market Analysis in France Using SQL**

Dans ce projet, j'ai réalisé une analyse approfondie du marché de l'emploi en France en utilisant un jeu de données provenant de Kaggle. Le jeu de données comprenait des informations sur les statistiques de l'emploi, les salaires, la démographie de la population et les données géographiques à travers différentes villes et régions de France. L'objectif était d'analyser les tendances de l'emploi, les données salariales et les informations démographiques pour obtenir des aperçus pertinents sur le marché du travail, notamment les différences salariales, l'emploi par taille d'entreprise et les répartitions de population par région.

**Contributions Clés & Réalisations :**

**Préparation et Transformation des Données :**

1-**Gestion des Types de Données :** Utilisation des commandes SQL pour afficher et modifier les types de données des différentes colonnes dans les tables. Par exemple, j'ai changé les types de colonnes de l'entier au flottant pour accueillir des valeurs décimales et garantir une analyse précise, notamment dans les colonnes liées aux salaires et à la population.

2-**Nettoyage des Données :** Application de techniques de nettoyage des données, y compris la suppression des espaces de début et de fin dans les codes géographiques et la mise en majuscule des codes pour maintenir la cohérence dans l'ensemble du jeu de données.

3-**Gestion des Données Manquantes :** Utilisation de fonctions SQL comme COALESCE pour gérer les valeurs NULL, les remplaçant par des valeurs par défaut telles que 0 afin d'assurer des ensembles de données complets pour l'analyse.

**Analyse Exploratoire des Données (EDA) :**

1-**Analyse Démographique de la Population :** Analyse des données démographiques pour évaluer le nombre d'hommes et de femmes et calculer la population totale par tranche d'âge.

2-**Tendances de l'Emploi :** Calcul du nombre total d'entreprises par ville et somme des entreprises par catégories de taille (par exemple, entreprises de 1 à 5 employés, entreprises de 100 à 199 employés, etc.). Cela a permis de découvrir la répartition des entreprises en fonction de leur taille à travers différentes villes et régions.

3-**Analyse des Salaires :** Analyse des données salariales en calculant le salaire net moyen pour chaque ville et par type de poste (par exemple, cadre, cadre intermédiaire, employé, ouvrier). De plus, j'ai examiné le salaire net moyen pour les hommes et les femmes en fonction des tranches d'âge, mettant en évidence les disparités salariales entre les sexes.

**Requêtes SQL Avancées & Jointures :**

1-**Jointures Internes :** Utilisation de jointures internes pour combiner les données sur l'emploi (taille des entreprises) avec les données salariales, fournissant des aperçus sur la façon dont la taille des entreprises est liée aux niveaux de salaire dans différentes régions.

2-**Jointures Gauche et Droite :** Application de jointures à gauche pour fusionner les données démographiques de la population avec les données géographiques, et de jointures à droite pour fusionner les données sur la taille des entreprises avec celles sur la population, permettant des aperçus complets à travers différentes dimensions du jeu de données.

3-**Jointures Complètes :** Mise en œuvre de jointures complètes pour fusionner toutes les données disponibles, garantissant qu'aucune donnée ne soit exclue, même si elle ne correspondait pas à toutes les tables.

**Principaux Aperçus Dérivés :**

1-**Répartition Géographique de l'Emploi :** Identification du nombre total d'entreprises et de leur répartition par taille dans les grandes villes comme Paris et Rouen.

2-**Disparités Salariales :** L'analyse a révélé des différences importantes dans les salaires en fonction des catégories de postes, du sexe et des tranches d'âge.

3-**Différences Régionales :** Découverte de variations régionales dans la taille des entreprises et les données démographiques de la population, certaines régions montrant une concentration plus élevée d'entreprises de grande taille, tandis que d'autres ont une proportion plus élevée d'entreprises de petite taille.

4-**Emploi et Démographie :** Les diverses jointures ont permis de comprendre les relations entre les facteurs démographiques (par exemple, l'âge et le sexe) et la taille des entreprises, offrant une vision plus claire de la manière dont le marché du travail fonctionne à travers le pays.

**Principales Leçons Apprises & Impact :**

1-**Profondeur en SQL :** Renforcement de mes compétences en SQL, en particulier dans la manipulation des données, l'optimisation des requêtes et l'utilisation de fonctions SQL avancées (comme COALESCE, TRIM et UPPER) pour nettoyer et transformer les données en vue d'une analyse.

2-**Analyse des Données et Reporting :** Acquisition d'une expérience précieuse dans l'utilisation de SQL pour l'analyse exploratoire des données et la génération de rapports, fournissant des informations exploitables sur le marché de l'emploi en France.

3-**Compréhension des Tendances de l'Emploi :** Apprentissage pour identifier les principales tendances de l'emploi, comme la répartition des entreprises par taille, et comment les facteurs démographiques influencent les salaires et les opportunités d'emploi.

4-**Jointures et Intégration des Données :** Amélioration de ma capacité à intégrer des données provenant de plusieurs sources et à effectuer des jointures complexes (internes, gauche, droite et complètes) pour fournir des aperçus plus complets.

5-**Applications Réelles :** Ce projet m'a permis d'acquérir une expérience pratique en travaillant avec des ensembles de données réels, me permettant d'appliquer mes compétences techniques pour résoudre des problèmes complexes liés à l'emploi, à la démographie et à l'analyse salariale.

Grâce à ce projet, j'ai développé une compréhension plus profonde de la manière dont l'analyse des données, en particulier SQL, peut être utilisée pour analyser et interpréter les tendances du marché de l'emploi et contribuer à une prise de décision plus éclairée dans les affaires et la planification des politiques.







