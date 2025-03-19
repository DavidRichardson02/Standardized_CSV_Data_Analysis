# Standardized CSV Data Analysis Notes

---

## 1. Introduction & High-Level Overview

The project provides a robust and standardized pipeline for reading, parsing,
cleaning/preprocessing, analyzing, and modeling data from CSV (or similarly
delimited) files. The typical flow this pipeline is designed to handle:

1. **Read Raw CSV:**
   - Input file lines are captured line by line and stored in-memory data
     structures (`char**`), with special functions to detect delimiters (commas,
     semicolons, tabs, etc.).

2. **Preprocess & Clean:**
   - Identifying and trimming problematic characters such as whitespaces,
     repeated delimiters, placeholder or missing-value markers (many cases),
     etc.
   - Ensuring consistent date/time string representations by detecting
     occurrences of common date/time formats() and converting them to their
     Unix time equivalent for the purpose of adhering to the expected
     compatibility protocol.
   - Extracting and/or standardizing units attached to numeric fields (link to
     documentation in `StringUtilities.h/c`).

<br />
<br />

3. **Evaluate and Extract:**
   - The parameters of each field and identify which fields are plottable and
     which might need special handling using type inference.
   - In the context of this program, any data that can be effectively displayed
     and analyzed through graphs or plots, i.e., mapped to a coordinate
     system and visually represented, is considered valid for plotting.

     This typically includes numerical values (measurements, statistics, time
     series data, etc.), categorical data (that can be mapped to a coordinate
     system, e.g., using a color palette or labels), or any other data that can be
     transformed into a format suitable for plotting and whose method of
     doing is accommodated by the program’s functionality (some functions
     can be plotted by evaluating them at different points along a coordinate
     system).

     It is important to note that not all data is inherently plottable. For
     instance, very complex or high-dimensional data may require advanced
     techniques or dimensionality reduction methods to be effectively
     visualized which is largely not within the scope or purpose of this project.
<br />
     
<img width="944" alt="Screenshot 2025-03-19 at 11 16 34 AM" src="https://github.com/user-attachments/assets/abb129d0-67fb-455a-9b96-da0b38d4b331" />

<br />
<img width="936" alt="Screenshot 2025-03-19 at 11 11 49 AM" src="https://github.com/user-attachments/assets/8af51494-67ce-4fa1-a45c-50d299f61e7b" />

<br />
<br />
4. **Organize Data into Structured Directories**
   - Once field types are identified, each field’s data is split out and
     systematically written to a dedicated file within a custom generated
     directory (located at the same level as the original file path) to act as
     structured storage facilitating clear boundaries between raw data, cleaned
     CSV lines, and final numeric fields that are ready for direct processing.
   - Each field’s dedicated file will adhere to a nomenclature structure for
     encoding relevant metadata via three distinct parts, in particular, the
     name of the data set file, the field’s indexing relative to all other plottable
     fields, and finally, the name of the field itself. This organized layout
     ensures that any subsequent script, statistical routine, or plotting function
     can discover and load numeric data easily, without re-parsing the entire
     CSV.
   - The name of the file will provide the data set it is contained in, the order
     and index of its plottability, and of course the name of the field itself; in
     this way, any future analysis (statistical computations, modeling, plotting)
     can easily reference a single file dedicated to exactly one column or
     variable. For example:

     - Field: “mass”  
     - Data set file: “physics_particles.txt”  
     - Order/Index: Seventh among all fields and fourth among plottable fields  
     - Name (index from zero):  
       **“physics_particles_Plottable_Field_3-mass.txt”**  

   - Non-numeric columns (e.g., text descriptions) are also preserved in their
     own consistent structure, maintaining a one-to-one correspondence
     between row indices.

   - As the dataset grows or new columns appear, the directory structure
     simply expands and prunes itself accordingly. Such compartmentalized
     outputs facilitate advanced or domain-specific analysis steps with
     downstream tools like MATLAB, reduce clutter in intermediate
     computations, and enable a modular approach that readily extends to
     future transformations or data processing features.

<br />

<img width="442" alt="Screenshot 2025-03-15 at 9 29 39 PM" src="https://github.com/user-attachments/assets/fab982e4-33b1-4708-8bed-da884888b411" />
<br />

<img width="602" alt="Screenshot 2025-03-19 at 10 56 04 AM" src="https://github.com/user-attachments/assets/9cf40b34-a260-4fcb-ba17-0061f355fe3d" />


<br />
<br />
5. **Analyze:**
   - Once the numeric columns have been isolated in separate files, the
     program computes a variety of standard statistics and descriptive
     measures, without the need for repeated parsing or ad hoc cleaning.
   - Typical analyses include computing standard statistics (mean, median,
     variance, skewness), applying histogram-based techniques (e.g.,
     Freedman–Diaconis binning to manage outliers), or performing normality
     tests (such as Anderson–Darling) to detect whether a column follows a
     normal distribution.
   - These methods leverage the uniform schema established earlier—namely,
     that each column truly is numeric, free of spurious text, and dimensionally
     consistent.
   - By referencing the separated data files, the pipeline’s statistical routines
     can iterate through each numeric column, generate and store results (like
     summary statistics), and produce textual analysis summarizing each field’s
     key properties and reporting mean, standard deviation, skewness, A–D
     test statistic, bin counts, etc.
   - Through these steps, each numeric field ends with both raw numeric data
     (in its own file) and a companion analysis file detailing its statistical
     properties.




<br />

<img width="437" alt="Screenshot 2025-03-15 at 9 59 53 PM" src="https://github.com/user-attachments/assets/b5b8020d-ffd9-448b-ad6e-78545030c904" />

<br />
<br />

6. **Model (NOT COMPLETE IN PROGRAM, WIP):**
   - The program’s modeling phase builds upon these clean numeric columns
     to generate more advanced plots or fit more sophisticated computational
     models, such as Gaussian error functions, theoretical distributions, or
     time-series forecasting stubs.
   - This step involves creating MATLAB script files that load the numeric
     data, overlay reference curves (like a normal PDF), and/or apply further
     transformations (smoothing, curve fitting).
   - Because the pipeline stores each stage’s outputs in a structured manner
     with uniform data definitions, modeling scripts can systematically
     reference column $i$ as “FieldName:numeric,” and it becomes
     straightforward to loop over each numeric file, load data, and produce
     standardized plots and summaries—ensuring all fields follow the same
     analysis pipeline.
   - The standardized data directory structures become a reusable asset,
     where new modeling steps can be appended without a complete re-run
     from scratch.
   - The program thus bridges raw CSV data to higher-level modeling steps
     by ensuring that the data’s shape and types remain coherent from initial
     ingestion through final curve-fitting routines.



<br />
<br />
**Final Output in Terminal and Models Visualized in MATLAB**





```






----------------------------------------------------------------
 Blind extraction of File Contents    -->    Formatting:
----------------------------------------------------------------
	pdg_id,pdg_name,name,charge,rank,quarks,mass,mass_lower,mass_upper,width,width_lower,width_upper
	-2212,p,anti_proton,-1.0,4,UUD,938.27208816,2.9e-07,2.9e-07,0.0,0.0,0.0
	-2112,n,anti_neutron,0.0,4,UDD,939.5654205,5e-07,5e-07,7.493e-25,4e-28,4e-28
	-321,K,kaon-,-1.0,0,Us,493.677,0.016,0.016,5.317e-14,9e-17,9e-17
	-211,pi,pion,-1.0,0,Ud,139.57039,0.00018,0.00018,2.5284e-14,5e-18,5e-18
	-24,W,W-,-1.0,0,-,80379.0,12.0,12.0,2080.0,40.0,40.0
	-16,nu(tau),anti_tau_neutrino,0.0,0,-,-,-,-,0.0,0.0,0.0
	-15,tau,anti_tau,1.0,0,-,1776.86,0.12,0.12,2.267e-09,4e-12,4e-12
	-14,nu(mu),anti_muon_neutrino,0.0,0,-,-,-,-,0.0,0.0,0.0
	-13,mu,anti_muon,1.0,0,-,105.6583755,2.3e-06,2.3e-06,2.9959836e-16,3e-22,3e-22
	-12,nu(e),anti_electron_neutrino,0.0,0,-,-,-,-,0.0,0.0,0.0
	-11,e,anti_electron (positron),1.0,0,-,0.51099895,1.5e-10,1.5e-10,0.0,0.0,0.0
	-6,t,anti_top,-0.6666666666666666,0,T,172500.0,700.0,700.0,1420.0,150.0,190.0
	-5,b,anti_bottom,0.3333333333333333,0,B,4180.0,20.0,30.0,-,-,-
	-4,c,anti_charm,-0.6666666666666666,0,C,1270.0,20.0,20.0,-,-,-
	-3,s,anti_strange,0.3333333333333333,0,S,93.4,3.4,8.6,-,-,-
	-2,u,anti_up,-0.6666666666666666,0,U,2.16,0.3,0.5,-,-,-
	-1,d,anti_down,0.3333333333333333,0,D,4.67,0.2,0.5,-,-,-
	1,d,down,-0.3333333333333333,0,d,4.67,0.2,0.5,-,-,-
	2,u,up,0.6666666666666666,0,u,2.16,0.3,0.5,-,-,-
	3,s,strange,-0.3333333333333333,0,s,93.4,3.4,8.6,-,-,-
	4,c,charm,0.6666666666666666,0,c,1270.0,20.0,20.0,-,-,-
	5,b,bottom,-0.3333333333333333,0,b,4180.0,20.0,30.0,-,-,-
	6,t,top,0.6666666666666666,0,t,172500.0,700.0,700.0,1420.0,150.0,190.0
	11,e,electron,-1.0,0,-,0.51099895,1.5e-10,1.5e-10,0.0,0.0,0.0
	12,nu(e),electron_neutrino,0.0,0,-,-,-,-,0.0,0.0,0.0
	13,mu,muon,-1.0,0,-,105.6583755,2.3e-06,2.3e-06,2.9959836e-16,3e-22,3e-22
	14,nu(mu),muon_neutrino,0.0,0,-,-,-,-,0.0,0.0,0.0
	15,tau,tau,-1.0,0,-,1776.86,0.12,0.12,2.267e-09,4e-12,4e-12
	16,nu(tau),tau_netrino,0.0,0,-,-,-,-,0.0,0.0,0.0
	21,g,gluon,0.0,0,-,0.0,0.0,0.0,0.0,0.0,0.0
	22,gamma,photon,0.0,0,-,0.0,0.0,0.0,0.0,0.0,0.0
	23,Z,Z0,0.0,0,-,91187.6,2.1,2.1,2495.2,2.3,2.3
	24,W,W+,1.0,0,-,80379.0,12.0,12.0,2080.0,40.0,40.0
	25,H,higgs,0.0,0,-,125250.0,170.0,170.0,3.2,2.2,2.8
	111,pi,pion-,0.0,0,(uU-dD)/sqrt(2),134.9768,0.0005,0.0005,7.81e-06,1.2e-07,1.2e-07
	211,pi,pion+,1.0,0,uD,139.57039,0.00018,0.00018,2.5284e-14,5e-18,5e-18
	321,K,kaon+,1.0,0,uS,493.677,0.016,0.016,5.317e-14,9e-17,9e-17
	2112,n,neutron,0.0,4,udd,939.5654205,5e-07,5e-07,7.493e-25,4e-28,4e-28
	2212,p,proton,1.0,4,uud,938.27208816,2.9e-07,2.9e-07,0.0,0.0,0.0
	3112,Sigma,sigma-,-1.0,4,dds,1197.449,0.03,0.03,4.45e-12,3.2e-14,3.2e-14
	3122,Lambda,lambda0,0.0,4,uds,1115.683,0.006,0.006,2.501e-12,1.9e-14,1.9e-14
	3212,Sigma,sigma0,0.0,4,uds,1192.642,0.024,0.024,0.0089,0.0008,0.0009
	3222,Sigma,sigma+,1.0,4,uus,1189.37,0.07,0.07,8.209e-12,2.7e-14,2.7e-14
	3312,Xi,xi-,-1.0,4,dss,1321.71,0.07,0.07,4.02e-12,4e-14,4e-14
	3322,Xi,xi0,0.0,4,uss,1314.86,0.2,0.2,2.27e-12,7e-14,7e-14
	3334,Omega,omega-,-1.0,4,sss,1672.45,0.29,0.29,8.02e-12,1.1e-13,1.1e-13





----------------------------------------------------------------
 Formatted Extraction of File Contents    -->    Preprocessing:
----------------------------------------------------------------
	pdg_id,pdg_name,name,charge,rank,quarks,mass,mass_lower,mass_upper,width,width_lower,width_upper
	-2212,p,anti_proton,-1.0,4,UUD,938.27208816,2.9e-07,2.9e-07,0.0,0.0,0.0
	-2112,n,anti_neutron,0.0,4,UDD,939.5654205,5e-07,5e-07,7.493e-25,4e-28,4e-28
	-321,K,kaon-,-1.0,0,Us,493.677,0.016,0.016,5.317e-14,9e-17,9e-17
	-211,pi,pion,-1.0,0,Ud,139.57039,0.00018,0.00018,2.5284e-14,5e-18,5e-18
	-24,W,W-,-1.0,0,0.0,80379.0,12.0,12.0,2080.0,40.0,40.0
	-16,nu(tau),anti_tau_neutrino,0.0,0,0.0,0.0,0.0,0.0,0.0,0.0,0.0
	-15,tau,anti_tau,1.0,0,0.0,1776.86,0.12,0.12,2.267e-09,4e-12,4e-12
	-14,nu(mu),anti_muon_neutrino,0.0,0,0.0,0.0,0.0,0.0,0.0,0.0,0.0
	-13,mu,anti_muon,1.0,0,0.0,105.6583755,2.3e-06,2.3e-06,2.9959836e-16,3e-22,3e-22
	-12,nu(e),anti_electron_neutrino,0.0,0,0.0,0.0,0.0,0.0,0.0,0.0,0.0
	-11,e,anti_electron(positron),1.0,0,0.0,0.51099895,1.5e-10,1.5e-10,0.0,0.0,0.0
	-6,t,anti_top,-0.6666666666666666,0,T,172500.0,700.0,700.0,1420.0,150.0,190.0
	-5,b,anti_bottom,0.3333333333333333,0,B,4180.0,20.0,30.0,0.0,0.0,0.0
	-4,c,anti_charm,-0.6666666666666666,0,C,1270.0,20.0,20.0,0.0,0.0,0.0
	-3,s,anti_strange,0.3333333333333333,0,S,93.4,3.4,8.6,0.0,0.0,0.0
	-2,u,anti_up,-0.6666666666666666,0,U,2.16,0.3,0.5,0.0,0.0,0.0
	-1,d,anti_down,0.3333333333333333,0,D,4.67,0.2,0.5,0.0,0.0,0.0
	1,d,down,-0.3333333333333333,0,d,4.67,0.2,0.5,0.0,0.0,0.0
	2,u,up,0.6666666666666666,0,u,2.16,0.3,0.5,0.0,0.0,0.0
	3,s,strange,-0.3333333333333333,0,s,93.4,3.4,8.6,0.0,0.0,0.0
	4,c,charm,0.6666666666666666,0,c,1270.0,20.0,20.0,0.0,0.0,0.0
	5,b,bottom,-0.3333333333333333,0,b,4180.0,20.0,30.0,0.0,0.0,0.0
	6,t,top,0.6666666666666666,0,t,172500.0,700.0,700.0,1420.0,150.0,190.0
	11,e,electron,-1.0,0,0.0,0.51099895,1.5e-10,1.5e-10,0.0,0.0,0.0
	12,nu(e),electron_neutrino,0.0,0,0.0,0.0,0.0,0.0,0.0,0.0,0.0
	13,mu,muon,-1.0,0,0.0,105.6583755,2.3e-06,2.3e-06,2.9959836e-16,3e-22,3e-22
	14,nu(mu),muon_neutrino,0.0,0,0.0,0.0,0.0,0.0,0.0,0.0,0.0
	15,tau,tau,-1.0,0,0.0,1776.86,0.12,0.12,2.267e-09,4e-12,4e-12
	16,nu(tau),tau_netrino,0.0,0,0.0,0.0,0.0,0.0,0.0,0.0,0.0
	21,g,gluon,0.0,0,0.0,0.0,0.0,0.0,0.0,0.0,0.0
	22,gamma,photon,0.0,0,0.0,0.0,0.0,0.0,0.0,0.0,0.0
	23,Z,Z0,0.0,0,0.0,91187.6,2.1,2.1,2495.2,2.3,2.3
	24,W,W+,1.0,0,0.0,80379.0,12.0,12.0,2080.0,40.0,40.0
	25,H,higgs,0.0,0,0.0,125250.0,170.0,170.0,3.2,2.2,2.8
	111,pi,pion-,0.0,0,(uU-dD)/sqrt(2),134.9768,0.0005,0.0005,7.81e-06,1.2e-07,1.2e-07
	211,pi,pion+,1.0,0,uD,139.57039,0.00018,0.00018,2.5284e-14,5e-18,5e-18
	321,K,kaon+,1.0,0,uS,493.677,0.016,0.016,5.317e-14,9e-17,9e-17
	2112,n,neutron,0.0,4,udd,939.5654205,5e-07,5e-07,7.493e-25,4e-28,4e-28
	2212,p,proton,1.0,4,uud,938.27208816,2.9e-07,2.9e-07,0.0,0.0,0.0
	3112,Sigma,sigma-,-1.0,4,dds,1197.449,0.03,0.03,4.45e-12,3.2e-14,3.2e-14
	3122,Lambda,lambda0,0.0,4,uds,1115.683,0.006,0.006,2.501e-12,1.9e-14,1.9e-14
	3212,Sigma,sigma0,0.0,4,uds,1192.642,0.024,0.024,0.0089,0.0008,0.0009
	3222,Sigma,sigma+,1.0,4,uus,1189.37,0.07,0.07,8.209e-12,2.7e-14,2.7e-14
	3312,Xi,xi-,-1.0,4,dss,1321.71,0.07,0.07,4.02e-12,4e-14,4e-14
	3322,Xi,xi0,0.0,4,uss,1314.86,0.2,0.2,2.27e-12,7e-14,7e-14
	3334,Omega,omega-,-1.0,4,sss,1672.45,0.29,0.29,8.02e-12,1.1e-13,1.1e-13





----------------------------------------------------------------
 Preprocessed Extraction of File Contents    -->    Plottability:
----------------------------------------------------------------
	pdg_id,charge,rank,mass,mass_lower,mass_upper,width,width_lower,width_upper
	-2212,-1.0,4,938.27208816,2.9e-07,2.9e-07,0.0,0.0,0.0,
	-2112,0.0,4,939.5654205,5e-07,5e-07,7.493e-25,4e-28,4e-28,
	-321,-1.0,0,493.677,0.016,0.016,5.317e-14,9e-17,9e-17,
	-211,-1.0,0,139.57039,0.00018,0.00018,2.5284e-14,5e-18,5e-18,
	-24,-1.0,0,80379.0,12.0,12.0,2080.0,40.0,40.0,
	-16,0.0,0,0.0,0.0,0.0,0.0,0.0,0.0,
	-15,1.0,0,1776.86,0.12,0.12,2.267e-09,4e-12,4e-12,
	-14,0.0,0,0.0,0.0,0.0,0.0,0.0,0.0,
	-13,1.0,0,105.6583755,2.3e-06,2.3e-06,2.9959836e-16,3e-22,3e-22,
	-12,0.0,0,0.0,0.0,0.0,0.0,0.0,0.0,
	-11,1.0,0,0.51099895,1.5e-10,1.5e-10,0.0,0.0,0.0,
	-6,-0.6666666666666666,0,172500.0,700.0,700.0,1420.0,150.0,190.0,
	-5,0.3333333333333333,0,4180.0,20.0,30.0,0.0,0.0,0.0,
	-4,-0.6666666666666666,0,1270.0,20.0,20.0,0.0,0.0,0.0,
	-3,0.3333333333333333,0,93.4,3.4,8.6,0.0,0.0,0.0,
	-2,-0.6666666666666666,0,2.16,0.3,0.5,0.0,0.0,0.0,
	-1,0.3333333333333333,0,4.67,0.2,0.5,0.0,0.0,0.0,
	1,-0.3333333333333333,0,4.67,0.2,0.5,0.0,0.0,0.0,
	2,0.6666666666666666,0,2.16,0.3,0.5,0.0,0.0,0.0,
	3,-0.3333333333333333,0,93.4,3.4,8.6,0.0,0.0,0.0,
	4,0.6666666666666666,0,1270.0,20.0,20.0,0.0,0.0,0.0,
	5,-0.3333333333333333,0,4180.0,20.0,30.0,0.0,0.0,0.0,
	6,0.6666666666666666,0,172500.0,700.0,700.0,1420.0,150.0,190.0,
	11,-1.0,0,0.51099895,1.5e-10,1.5e-10,0.0,0.0,0.0,
	12,0.0,0,0.0,0.0,0.0,0.0,0.0,0.0,
	13,-1.0,0,105.6583755,2.3e-06,2.3e-06,2.9959836e-16,3e-22,3e-22,
	14,0.0,0,0.0,0.0,0.0,0.0,0.0,0.0,
	15,-1.0,0,1776.86,0.12,0.12,2.267e-09,4e-12,4e-12,
	16,0.0,0,0.0,0.0,0.0,0.0,0.0,0.0,
	21,0.0,0,0.0,0.0,0.0,0.0,0.0,0.0,
	22,0.0,0,0.0,0.0,0.0,0.0,0.0,0.0,
	23,0.0,0,91187.6,2.1,2.1,2495.2,2.3,2.3,
	24,1.0,0,80379.0,12.0,12.0,2080.0,40.0,40.0,
	25,0.0,0,125250.0,170.0,170.0,3.2,2.2,2.8,
	111,0.0,0,134.9768,0.0005,0.0005,7.81e-06,1.2e-07,1.2e-07,
	211,1.0,0,139.57039,0.00018,0.00018,2.5284e-14,5e-18,5e-18,
	321,1.0,0,493.677,0.016,0.016,5.317e-14,9e-17,9e-17,
	2112,0.0,4,939.5654205,5e-07,5e-07,7.493e-25,4e-28,4e-28,
	2212,1.0,4,938.27208816,2.9e-07,2.9e-07,0.0,0.0,0.0,
	3112,-1.0,4,1197.449,0.03,0.03,4.45e-12,3.2e-14,3.2e-14,
	3122,0.0,4,1115.683,0.006,0.006,2.501e-12,1.9e-14,1.9e-14,
	3212,0.0,4,1192.642,0.024,0.024,0.0089,0.0008,0.0009,
	3222,1.0,4,1189.37,0.07,0.07,8.209e-12,2.7e-14,2.7e-14,
	3312,-1.0,4,1321.71,0.07,0.07,4.02e-12,4e-14,4e-14,
	3322,0.0,4,1314.86,0.2,0.2,2.27e-12,7e-14,7e-14,
	3334,-1.0,4,1672.45,0.29,0.29,8.02e-12,1.1e-13,1.1e-13,





----------------------------------------------------------------
 Pairs of field names and their corresponding types in 'process_data_set_for_analysis':
----------------------------------------------------------------
	pdg_id;numeric
	pdg_name;nonnumeric
	name;nonnumeric
	charge;numeric
	rank;numeric
	quarks;nonnumeric
	mass;numeric
	mass_lower;numeric
	mass_upper;numeric
	width;numeric
	width_lower;numeric
	width_upper;numeric







***********************************************************************
 Preliminary extraction and preprocessing of data set complete.
		Summary: Preprocessed the data set to ensure operational compatibility throughout the program. 
Extracting and formatting the contents of the data set achieved by having: 
		1. Extracted the data set contents into an array of strings.
		2. Pruned and trimmed the data set contents to remove problematic characters.
		3. Organized entries of the file corresponding to the expected line order of header and data entries.
		4. Parsed the file contents to independently capture all entries for each of the data set's fields.
		5. Categorized the data parameters into plottable and unplottable values.
		6. Created directories for plottable fields of data entries, named & located with respect to the original file.
		7. Data conditionally written into files for each field, named & placed in accordance with the aforementioned directory and nomenclature.

***********************************************************************







<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

 Dataset Directory physics_particles_Plottable_Fields

>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

 Directory Pathname: /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields
 Count of Files: 9    
 Files in Directory: 
 	      physics_particles_Plottable_Field_5-mass_upper
 	      physics_particles_Plottable_Field_7-width_lower
 	      physics_particles_Plottable_Field_3-mass
 	      physics_particles_Plottable_Field_8-width_upper
 	      physics_particles_Plottable_Field_4-mass_lower
 	      physics_particles_Plottable_Field_6-width
 	      physics_particles_Plottable_Field_0-pdg_id
 	      physics_particles_Plottable_Field_2-rank
 	      physics_particles_Plottable_Field_1-charge


 Properties: 

 	0:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields/physics_particles_Plottable_Field_5-mass_upper.txt
        		429  

 	1:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields/physics_particles_Plottable_Field_7-width_lower.txt
        		443  

 	2:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields/physics_particles_Plottable_Field_3-mass.txt
        		520  

 	3:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields/physics_particles_Plottable_Field_8-width_upper.txt
        		443  

 	4:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields/physics_particles_Plottable_Field_4-mass_lower.txt
        		493  

 	5:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields/physics_particles_Plottable_Field_6-width.txt
        		450  

 	6:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields/physics_particles_Plottable_Field_0-pdg_id.txt
        		126  

 	7:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields/physics_particles_Plottable_Field_2-rank.txt
        		50   

 	8:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields/physics_particles_Plottable_Field_1-charge.txt
        		283  


Error: Interquartile range is zero. Choose a different binning method, in 'compute_IQR'.Error creating MATLAB plot script: /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/\320\224_plot.m
Error creating MATLAB plot script: /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/\360\200\224_plot.m
Error creating MATLAB plot script: /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/\200\202d_plot.m








<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

 Dataset Directory physics_particles_Plottable_Fields_Full_Analysis_Results

>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

 Directory Pathname: /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results
 Count of Files: 49   
 Files in Directory: 
 	      width_upper_normality
 	      mass_lower_full_analysis
 	      mass_upper_plot
 	      charge_full_analysis
 	      width_upper_full_analysis
 	      mass_upper_normality
 	      width_lower_stats
 	      charge_histogramcharge_stats
 	      mass_normality
 	      width_upper_plot
 	      width_full_analysis
 	      (null)_plot
 	      pdg_id_normality
 	      mass_upper_full_analysis
 	      _plot
 	      mass_lower_normality
 	      width_lower_plot
 	      width_lower_full_analysis
 	      rank_full_analysis
 	      pdg_id_plot
 	      width_upper_stats
 	      rank_stats
 	      width_histogram
 	      width_lower_normality
 	      charge_stats
 	      rank_histogram
 	      mass_lower_plot
 	      width_stats
 	      width_plot
 	      mass_plot
 	      mass_lower_histogram
 	      mass_upper_stats
 	      pdg_id_histogrammass_stats
 	      mass_stats
 	      pdg_id_stats
 	      rank_normality
 	      width_lower_histogram
 	      width_normality
 	      @$_plot
 	      mass_lower_statsrank_plot
 	      rank_plot
 	      width_upper_histogram
 	      pdg_id_full_analysis
 	      mass_full_analysis
 	      charge_plot
 	      mass_histogram
 	      comprehensive_plots
 	      charge_normality
 	      mass_upper_histogram


 Properties: 

 	0:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/width_upper_normality.txt
        		87   

 	1:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/mass_lower_full_analysis.txt
        		278  

 	2:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/mass_upper_plot.m
        		977  

 	3:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/charge_full_analysis.txt
        		280  

 	4:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/width_upper_full_analysis.txt
        		279  

 	5:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/mass_upper_normality.txt
        		87   

 	6:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/width_lower_stats.txt
        		90   

 	7:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/charge_histogram.txt
        		7    

 	8:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/mass_normality.txt
        		87   

 	9:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/width_upper_plot.m
        		983  

 	10:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/width_full_analysis.txt
        		272  

 	11:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/(null)_plot.m
        		20987

 	12:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/pdg_id_normality.txt
        		86   

 	13:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/mass_upper_full_analysis.txt
        		278  

 	14:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/_plot.m
        		918  

 	15:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/mass_lower_normality.txt
        		87   

 	16:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/width_lower_plot.m
        		983  

 	17:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/width_lower_full_analysis.txt
        		279  

 	18:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/rank_full_analysis.txt
        		273  

 	19:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/pdg_id_plot.m
        		953  

 	20:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/width_upper_stats.txt
        		90   

 	21:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/rank_stats.txt
        		91   

 	22:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/width_histogram.txt
        		2084 

 	23:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/width_lower_normality.txt
        		87   

 	24:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/charge_stats.txt
        		96   

 	25:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/rank_histogram.txt
        		6    

 	26:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/mass_lower_plot.m
        		977  

 	27:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/width_stats.txt
        		89   

 	28:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/width_plot.m
        		947  

 	29:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/mass_plot.m
        		941  

 	30:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/mass_lower_histogram.txt
        		464  

 	31:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/mass_upper_stats.txt
        		90   

 	32:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/pdg_id_histogram.txt
        		12752

 	33:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/mass_stats.txt
        		90   

 	34:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/pdg_id_stats.txt
        		89   

 	35:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/rank_normality.txt
        		87   

 	36:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/width_lower_histogram.txt
        		24   

 	37:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/width_normality.txt
        		86   

 	38:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/@$_plot.m
        		936  

 	39:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/mass_lower_stats.txt
        		90   

 	40:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/rank_plot.m
        		941  

 	41:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/width_upper_histogram.txt
        		39   

 	42:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/pdg_id_full_analysis.txt
        		273  

 	43:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/mass_full_analysis.txt
        		272  

 	44:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/charge_plot.m
        		953  

 	45:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/mass_histogram.txt
        		9188 

 	46:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/comprehensive_plots.m
        		1706 

 	47:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/charge_normality.txt
        		87   

 	48:       /Users/98dav/Desktop/Xcode/ECE-370_Project/ECE-370_Standardized_CSV_Data_Analysis/physics_particles_Plottable_Fields_Full_Analysis_Results/mass_upper_histogram.txt
        		464  


```
<br />
<br />
<img width="2056" alt="physics_particles_model" src="https://github.com/user-attachments/assets/a681d1cb-5709-4c01-8cb5-4d099206bc50" />

<br />
<img width="2055" alt="weather_measurements_model" src="https://github.com/user-attachments/assets/58ad0442-5667-48c4-8163-adcd23014464" />



<br />
<br />


**Summary**:  
By successively reading, preprocessing, extracting numeric fields into
directories, then systematically analyzing and modeling those fields, these stages
deliver a coherent, repeatable, and extensible environment for CSV-based data analysis
of many forms. Users can conveniently plug in new analysis scripts, numeric
transformations, or domain-focused modeling routines, with confidence that the data
have been cleaned and structured according to well-defined protocols.


<br />
<br />
<br />



---

## 2. CSV Uniform Schema & Program Assumptions

The objective of this documentation is to elucidate the consistent and uniform
logical framework governing the representation and description of data in a Comma-
Separated Values (CSV) file. This framework emphasizes the uniform parameterization
of data entries by a consistent set of fields, and how the program effectively utilizes this
structure. Enclosed below is an overview of the project’s approach to CSV data,
ensuring consistency and uniformity. This approach consistently treats each row as a
parameterized set of fields that directly correspond to a declared schema. The program
effectively leverages this structured representation.

Below is the overarching philosophy and assumptions the project uses when
interpreting CSV files (NOTE: How the analysis and modeling phases leverage this
uniform schema is omitted here for brevity.):

1. **Interpreting the CSV Structure:**
   - By convention, the first line of the CSV is the header line, the number of
     comma-separated fields in this header is fixed; subsequent rows must
     match that count.
   - Each element in this header is understood to be the “field name,” and all
     subsequent lines (or rows) contain data entries aligned with these field
     names. In essence, the CSV is conceived of as a table where columns are
     fixed, in both count and meaning, and each row must fill in every
     column’s value (or mark it as missing).
   - The project’s code explicitly enforces that the header’s number of
     character-delimited fields remains consistent with the number of fields
     recognized in every subsequent data row.
   - Internally, each field (column) is assigned a type label (“numeric” or
     “nonnumeric”), which is inferred from the CSV contents. The program
     uses that labeling, for instance, to decide which columns can be plotted.

2. **Uniform Parameterization by Field Count:**
   - The code that parses a CSV enforces a single, consistent set of fields
     across all data entries. This is accomplished by counting how many
     comma-delimited (or otherwise similarly-delimited) segments appear in
     the first line, then ensuring each of the following lines matches that count.
     In short, every row is parameterized by the same set of column names.
   - When the code parses a file, it reads the first line (the header) to establish
     `fieldCount`.
   - The next lines are split on the same delimiter into exactly `fieldCount`
     tokens each.
   - Each row’s data is aligned to the corresponding field name in the header.
   - This consistency is key for ensuring that if, say, column 2 is “mass,” then
     every row can supply a value for mass (or explicitly mark it missing). It also
     underpins plottability checks, missing-value strategies, and so on.

3. **Coupling Field Names with Data Types:**
   - Beyond simply splitting data into columns, the project code adds a
     further type annotation stage for each field. Specifically, the program
     “looks” at the second line (i.e., the first data row after the header) to
     guess whether each column is numeric or nonnumeric to form an initial
     guess and will then compare this guess against every other data entry’s
     corresponding column to ensure accurate type inference.
   - An internal representation of each column is constructed like
     `"FieldName:numeric"` or `"FieldName:nonnumeric"`, where a field will only
     be declared as nonnumeric once all potential numeric representations of
     that field’s contents have been ruled out (e.g., scientific notation, signs,
     decimals, etc.).
   - This pairing is used throughout the rest of the workflow—plotting
     routines, integrators, analysis modules, etc.—so that code can quickly
     check if a field is “plottable.”
   - Numeric columns are “plottable” and can be taken for further analysis
     without significant refactoring. Nonnumeric columns are stored but not
     fed to numeric-only analysis routines.

4. **Preprocessing**:  
   This preprocessing phase underpins the entire program’s
   compatibility with data and is what makes the standardization of data
   analysis possible in my approach.

   - Primarily concerned with enforcing a dynamic tracking of data quality to
     ensure compatibility throughout the program, the preprocessing phase
     blindly accepts all contents of the stored data set and enforces the
     declared data type.
   - If a column is expected numeric but the CSV row’s token is nonnumeric
     (other than a “missing” hyphen), the code replaces it with a default
     numeric placeholder (e.g., 0.0) to keep arrays consistent so all numeric
     columns remain valid and their relative order maintained.
   - Each column in each row, tallies how many entries are blank (“-”) or
     otherwise have some mismatch (e.g., expected numeric but found
     nonnumeric)—again possible because all rows present the same columns
     in order.
   - **Result**: For each field, the program knows (a) if it is numeric (plottable) or
     not, (b) how many missing/malformed entries occur, and (c) if it might
     need further transformation (i.e., date/time → Unix time… see
     `StringUtilities.h` documentation, isolated extraction of units, expanding
     scientific notation `1e5` → `10000`, etc.).

The uniform schema approach is central. From the assumptions it enforces, the rest of
the program can reliably parse, clean, analyze, and model the data using the same
structured assumption: all rows must provide the same fields, in the same order, typed
consistently. This “once interpreted, consistently used” approach cuts down on
guesswork or repeated parsing at every analysis step, but it requires a comprehensive
and exhaustive transformation of data into what the program and its assumptions
consider compatible.

### Why It Matters

1. **Data Consistency**: By enforcing a strict header and field matching, the project
   avoids mid-file re-interpretations or inconsistent row lengths.
2. **Enhanced Analysis**: This uniformity underpins consistent downstream operations
   —statistical integrators know exactly how many numeric columns exist and can
   skip nonnumeric columns, while plotting routines can extract “x” and “y” values
   by name, counting on consistent ordering.
3. **Modularity**: Each step in the pipeline—reading, cleaning, labeling, extracting
   numeric columns, generating analysis scripts—is encapsulated in its own
   function or set of functions, making it easy to replace, extend, or even refactor
   steps in operation without affecting the larger system.

---

## 3. Detailed Pipeline Explanation (WIP documenting)

Below is a comprehensive, end-to-end guide covering every header/source file
of this project in detail. The discussion begins with the high-level structure and end-
to-end flow, then drills down into each file: its purpose, key functions, important data
structures, and how it interacts with the rest of the program. Where relevant, I
integrate the extensive in-code comments to clarify each function’s role.

---

### 1. CommonDefinitions.h/.c

**Purpose**:

- Defines shared constants and macros used across the entire project.
- Houses special-case arrays (like `months[]`, `weekDays[]`,
  `commonDateTimeFormats[]`, and `commonUnitFormats[]`), so they remain
  accessible in one place.
- Introduces certain global variables or macros (like `BUFFER_SIZE` and
  `ARRAY_ELEMENT_TO_STRING()`) that other modules rely on.
- Central location for rarely changing “special case” definitions that unify the rest
  of the code.

**Key Definitions & Structures**:

1. **MAX_STRING_SIZE / MAX_NUM_FILE_LINES**
   - Provide upper bounds for typical string and line usage (e.g., no more than
     1000 characters in a line, or 100000 lines in a file).

2. **Macros for extracting string representations**
   - `VAR_NAME_AS_STRING(var)`,
     `ARRAY_ELEMENT_NAME_AS_STRING(var)`, and
     `ARRAY_ELEMENT_TO_STRING(arr,n)`.
   - They’re rarely invoked in the rest of the code but can be used to convert
     variable or array element names to strings at compile-time.

3. **Mutex localtime_mutex**
   - A global `pthread_mutex_t`, enabling thread-safe calls around `localtime`.
   - Used primarily by the function `thread_safe_localtime(...)` in
     **GeneralUtilities**.

4. **Arrays for date/time**:
   - `months[12]`, `weekDays[7]`, and `commonDateTimeFormats[12]` store textual
     month names, day names, and commonly encountered date/time
     patterns (e.g., `"%Y-%m-%d %H:%M"`).
   - The code uses these arrays to parse date/time strings into `struct tm`.

5. **commonUnitFormats[]**
   - Holds about 45 strings representing typical SI units, derived units, or
     other specialized measurement units.
   - Helps in detecting unit-suffixed numeric tokens (like `“23.1kg”`).

**Key Implementation Notes**:

- `commonDateTimeFormats[]` is crucial for the function
  `convert_to_unix_time(...)` in **GeneralUtilities.c** and for
  `string_is_date_time(...)` in **StringUtilities.c**.
- `commonUnitFormats[]` is used by `string_is_unit(...)` or
  `is_numeric_with_units(...)` in **StringUtilities.c**.
- Implementation: The `.c` file simply defines the `extern` arrays declared in
  **CommonDefinitions.h** and implements a helper `n_array_element_to_string(...)`
  used by the macros.

---

### 2. GeneralUtilities.h/.c

**Purpose**:

- Provides a broad set of utility functions that do not specifically belong to only
  string or file manipulation. This includes:
  1. Memory allocation helpers
  2. Sorting (merge sort, radix sort for doubles)
  3. Time conversions (Unix time, thread-safe localtime)
  4. Bitwise reinterpretations of doubles (e.g., `double_to_uint64()`, flipping
     sign bits)
  5. Basic math (min/max element, etc.)

**Important Function Categories**:

1. **Safe Memory Allocation**
   - `allocate_memory_int_ptr(size_t sizeI)`,
     `allocate_memory_char_ptr(size_t sizeC)`, etc.
   - Provide wrappers around `malloc` with error checking. For instance, if
     memory can’t be allocated, they `perror(...)` and `exit(1)`.

2. **Bitwise Operations**
   - `double_to_uint64(double value)`, `uint64_to_double(uint64_t)`,
     `double_to_mapped_uint64(double)`,
     `mapped_uint64_to_double(uint64_t)`, and `flip_sign_bit(uint64_t)`.
   - These are essential for the specialized radix sort to handle negative vs.
     positive doubles in correct numerical order by mapping them to a region
     of the unsigned integer space.

3. **Sorting**
   - **Merge Sort**:
     - `merge_data(...)`, `merge_sort_data(...)`, `merge_sort(...)`.
     - Classic divide-and-conquer mergesort for an array of doubles.
   - **Radix Sort for doubles**:
     - `radix_sort_doubles(double *unsortedData, const int numElements)`.
     - Uses the “bitwise reinterpretation” approach.
     - **Steps**:
       1. Map each double to `uint64_t` in an order-preserving way for
          sorting.
       2. Sort the `uint64_t`s by standard byte-level passes (256
          buckets each pass).
       3. Convert the sorted `uint64_t`s back to double.

4. **Time Conversions**
   - `convert_to_unix_time(const char* dateTimeString)`: tries each
     pattern in `commonDateTimeFormats[]`, calling `strptime(...)`, returning
     a `time_t` if successful or -1 if not.
   - `thread_safe_localtime(const time_t *tim, struct tm *result)`: wraps
     `localtime(...)` calls in a mutex lock/unlock for safety, copying out to
     `result`.

5. **Basic Math**
   - `minimum(double a, double b)`, `maximum(double a, double b)`:
     straightforward macros, though implemented as small functions.
   - `min_element(...)/max_element(...)`: skip NaNs, find the true min or
     max.

**Integration**:

- Radix Sort is used in higher-level code (like
  `extract_radix_sorted_data(...)` in **DataExtraction** or
  `process_data_set_for_analysis(...)` in **DataSetModeling**) to handle large
  numeric arrays.
- Unix time conversions are central in
  `replace_date_time_with_unix(...)` in **StringUtilities**.
- The memory-allocation wrappers show up throughout the code.

---

### 3. StringUtilities.h/.c

**Purpose**:

- Houses a comprehensive suite of string handling routines: trimming,
  splitting/tokenizing, analyzing whether a string is numeric, detecting date/time or
  units, plus logic to unify data line structure.

**Important Function Categories**:

1. **Character-Level Checks**
   - `char_is_alpha()`, `char_is_digit()`, `char_is_delimiter()`, etc.
   - These help parse CSV fields, skipping whitespace, detecting punctuation,
     etc.

2. **String Classification**
   - `string_is_numeric(...)`, `string_is_nonnumeric(...)`,
     `string_is_date_time(...)`, `string_is_unit(...)`.
   - For example, `string_is_date_time(...)` will tokenize a line, attempt
     `strptime(...)` with each `commonDateTimeFormats[]`, and set an integer
     array to 1 or 0 for each field.
   - Similarly, `string_is_unit(...)` checks for recognized units from
     `commonUnitFormats[]`.

3. **Trimming/Pruning**
   - `trim_string_whitespaces(...)`, `prune_string_whitespaces(...)`,
     `prune_repeated_delimiters_from_string(...)`.
   - These ensure consistent CSV lines by removing extra spaces or repeated
     delimiters (e.g., `,,` → `,0,` so that an empty field is replaced by “0”
     or another placeholder).

4. **Tokenizing & Concatenation**
   - `tokenize_string(...)`, `tokenize_string_r(...)`: akin to `strtok` but sometimes
     re-entrant.
   - `combine_strings(...)`, `concatenate_string(...)`,
     `concatenate_string_array(...)` to join arrays or pairs of strings
     efficiently.

5. **Higher-Level Preprocessing**
   - `prune_and_trim_problematic_characters_from_string(...)`:
     1. Trim leading/trailing whitespace.
     2. Remove internal whitespace.
     3. Handle repeated delimiters.
     4. Optionally detect date/time fields, convert them to Unix time.
   - `replace_date_time_with_unix(...)`: specifically scans fields for date/time and
     substitutes their numeric Unix time.
   - `extract_units_from_fields(...)`: tries to detect units from a numeric token
     and separate them into two arrays.

**Integration**:

- These string routines are heavily used in **DataExtraction** and
  **FileUtilities** when reading lines from CSV, pruning them, and assembling
  the final numeric or textual fields.
- Many CSV “quirks” (like repeated commas) get fixed here.

---

### 4. FileUtilities.h/.c

**Purpose**:

- Focused on file handling and directory operations.
- Functions to read entire files into memory, count lines/fields, create
  directories, retrieve file properties, etc.

**Important Function Categories**:

1. **File Path Analysis**
   - `determine_file_depth(...)`: counts `"/"` in the path.
   - `identify_file_extension(...)`: e.g., returns `.csv` from `/home/user/data.csv`.
   - `find_file_directory_path(...)`: e.g., from `/home/user/data.csv`, returns
     `/home/user/`.
   - `find_directory_name_from_path(...)`: from `/home/user/`, returns
     `user/`.
   - `find_name_from_path(...)`: extracts the bare filename (without
     extension).

2. **Counting Fields & Lines**
   - `count_data_fields(...)`: splits a header line to see how many columns exist.
   - `count_file_lines(filePathName, maxLines)`: loops through the file with
     `fgets` until max lines or EOF.
   - Additional helpers like `count_plot_data_fields(...)`.

3. **Reading & Writing**
   - `read_file_contents(...)`: read the entire file into a `char**` array, each
     element containing one line.
   - `write_file_contents(...)`: writes a `char**` back out line by line.
   - `write_file_numeric_data(...)`: writes an array of doubles to a file, often
     storing them with a header that includes the field name.

4. **Merging & Generating Filenames**
   - `generate_merged_filename(filePath1, filePath2)`, `merge_two_files(...)`:
     combine or unify data from two distinct files, or produce a new filename
     that references both.

5. **Directory Operations**
   - `create_directory(filePathName, directoryName)`: uses `mkdir` or similar,
     forming e.g. `/home/user/data.csv_plottable_fields/`.
   - `delete_directory(...)`, `count_files_in_directory(...)`,
     `get_file_pathnames_in_directory(...)`, etc.

6. **FileProperties & DirectoryProperties Structures**
   - `FileProperties` can hold `(fileName, fileExtension, filePathName,
     fileLineCount)`.
   - `DirectoryProperties` can hold `(directoryPathName, directoryName,
     fileCount, fileProperties)`, so you can enumerate which files exist in
     that directory.

**Integration**:

- Called first in the pipeline to read CSV lines (`read_file_contents`), or to write
  them back out at the end (`write_file_contents`).
- Helps create specialized subdirectories where numeric columns are stored.

---

### 5. DataExtraction.h/.c

**Purpose**:

- Central **data set** parsing and preliminary analysis.
- Identifies missing values, pairs each field in the header with data types, and
  extracts “plottable” numeric columns.

**Important Function Categories**:

1. `parse_entire_file(char **fileContents, int lineCount, int* fieldCount, const char *delim)`
   - Tokenizes each line, storing the i-th field of each row in a 2D array
     structure.
   - For example, `separatedData[i][line] =` the i-th column’s value in row
     `line`.
   - Also returns `fieldCount` if needed.

2. `count_missing_values(...)`
   - Iterates over each row, checking for blank (`"-"`) or mismatched data.
   - Uses `determine_data_entry_types(...)` to see if a column is numeric or not.
     If it’s flagged numeric but the data is invalid, increments
     `missingDataCount`.

3. **Header & Data Type Identification**
   - `capture_data_set_header_for_plotting(...)`: pairs each field name in the
     header with the type (e.g., `"mass:numeric"`), returning an array of those
     pairs.
   - `determine_data_entry_types(...)`: checks each token in a single line,
     returning `"numeric"` or `"nonnumeric"`.
   - `determine_common_data_entry_types(...)`: repeats the above across all
     lines, concluding the most typical type for each column.

4. **Identifying & Formatting Fields**
   - `identify_plottable_fields(...)`: from the name/type pairs, returns an
     integer array: `1` if numeric, `0` if not.
   - `capture_plottable_fields(...)` and `format_data_entry_for_plotting(...)` then
     produce strings (or arrays) with only numeric columns, substituting
     defaults for missing or invalid numeric fields.

5. **Writing Data**
   - `write_plottable_data(...)`: writes each numeric column to a text file
     named after the field.
   - `write_data_set(...)`: can rewrite the entire dataset, splitting numeric vs.
     nonnumeric columns.

6. **Extracting Full Numeric Arrays**
   - `extract_plottable_data_field(...)`, `extract_plottable_data(...)`: read all
     numeric columns from the “clean” lines into double arrays.
   - `extract_radix_sorted_data(...)`: same but sorts each column as well. Great
     for statistical analysis.

**Integration**:

- Most of the code that cleans and infers types is located or invoked here, calling
  **StringUtilities** frequently.
- The results from **DataExtraction** flow into **DataAnalysis_DataSetModeling** or
  other analysis modules that want an array of numeric columns.

---

### 6. StatisticalMethods.h/.c

**Purpose**:

- Perform standard statistical computations such as mean, standard deviation,
  skewness, histogram binning, and normality tests (Anderson–Darling).

**Important Function Categories**:

1. **Basic Stats**
   - `compute_mean(...)`, `compute_standard_deviation(...)`,
     `compute_skewness(...)`.

2. **Histogram & Binning**
   - Freedman–Diaconis approach with `compute_IQR(...)` and
     `compute_bin_width(...)`.
   - Histogram structure: `bins[]`, `num_bins`, `bin_width`, `min_value`,
     `max_value`.
   - `compute_data_set_binning(...)` uses Freedman–Diaconis or an approach to
     produce optimal bins.

3. **Anderson–Darling Normality**
   - `anderson_darling_normality_test(...)`: sorts data, then compares the
     empirical CDF to the normal CDF.
   - If data has many ties, it might incorrectly reject normality, but that’s a
     known limitation.

4. **Gaussian / Integration**
   - `compute_gaussian(n, x[])` returns the PDF-like function `2/sqrt(pi)*exp(-x^2)`.
   - `gaussian_riemann_sum_integration(...)` does a Riemann sum to
     approximate error function.
   - These are used for demonstration or plotting normal distributions.

5. **File-based**
   - Some helper `compute_mean_from_file(...)`, etc. read numeric data from a
     file, do the stats in one step.
   - `analyze_numeric_data(double *data, int n, const char *outputDirectory,
     const char *fieldName)` returns a `StatisticalReport` with (`mean`,
     `std_dev`, `skewness`, `ad_stat`, `histogram`).

**Integration**:

- Typically invoked after numeric columns are extracted. For each column’s double
  array, code calls `analyze_numeric_data(...)`, obtains mean, histogram, etc., and
  writes a small `_analysis.txt` or `_histogram.txt`.

---

### 7. DataAnalysis.h/c and DataSetModeling.h/c

(this is effectively the orchestrator for analysis and modeling.)

**Purpose**:

- Coordinates the final pipeline steps: once data is “cleaned” and “plottable,” it
  can be analyzed in detail or modeled.
- Creates or references directories for numeric data, calls
  `extract_radix_sorted_data(...)`, and writes out modeling scriptsb for
  MATLAB.

**Key Exports**:

1. **Structures**
   - **DataSetProperties**: `(entryCount, fieldCount, delimiter,
     dataSetFieldNames, fieldNameTypePairs, dataSetFilePathName,
     missingDataCount, plottabilityStatus, commonDataTypes,
     dataSetFileContents)`.
     - Encapsulates all key information about a single dataset.

   - **DataSetAnalysis**: extends **DataSetProperties** with `double
     **radixSortedData` plus references to directories in which plottable or
     analysis data is stored.

2. **Functions**
   - `analyze_data_set_properties(...)`: top-level function that:
     - Reads lines from a file, identifies delimiter.
     - Counts fields, calls `capture_data_set_header_for_plotting(...)`,
       `determine_common_data_entry_types(...)`, etc.
     - Returns a fully built `DataSetProperties`.
   - `capture_data_set_configurations(...)`: a sub-variant if you already have the
     lines read.
   - `process_data_set_for_analysis(...)`:
     - Reads lines, calls `extract_and_format_data_set(...)` to unify
       them.
     - Writes the dataset out via `write_data_set(...)`.
     - Returns a `DataSetAnalysis` that includes directory info for the
       numeric fields.
   - `preprocess_data_set_for_analysis(...)`: a lighter wrapper that just returns
     the directory path with plottable data.
   - `perform_full_analysis_and_modeling(...)`: enumerates plottable field
     files, calls `analyze_numeric_data(...)`, writes out `_analysis.txt` or
     `_histogram.txt`, and can generate MATLAB scripts.

3. **MATLAB Scripts Generation**
   - Routines like `generate_individual_matlab_scripts(...)` or
     `generate_comprehensive_matlab_script(...)` produce `.m` files that load the
     numeric data, plot histograms, overlay normal curves, etc.
   - Typically each numeric field is given a separate script or a combined script
     that loops over them.

**Integration**:

- This is often called by `main.c`, providing a single function invocation that
  orchestrates reading, cleaning, analyzing, and generating results.
- **DataAnalysis_DataSetModeling** thus depends on **DataExtraction**,
  **StringUtilities**, **FileUtilities**, and **StatisticalMethods** to do the actual
  “leg work.”

---

## 4. Conclusion & Key Takeaways

### Conclusion

The code is a modular pipeline for CSV data ingestion, cleaning, extraction,
analysis, and optional modeling. Each step, from reading lines to generating final
scripts, is in well-documented `.c/h` files with specialized purposes:

1. **CommonDefinitions / GeneralUtilities**: The foundation (memory helpers,
   time conversions, radial/merge sorts).
2. **StringUtilities / FileUtilities**: The heavy lifting for string parsing
   (trimming, splitting) and file/directory handling.
3. **DataExtraction**: The main CSV logic—determining field types, extracting
   numeric fields, writing them out.
4. **DataAnalysis**: High-level “pipeline orchestration.”
5. **StatisticalMethods**: Standard stats and histograms for numeric data.
6. **DataSetModeling**: Analysis and script generation for modeling.

From this uniform approach, it is straightforward to incorporate additional
transformations or domain-specific modeling steps while maintaining a reliable,
repeating pattern for all new CSV data sets.

### Key Takeaways

1. **Modular Design**:  
   The program is deliberately separated into smaller files, each with a clear
   responsibility—string parsing vs. file I/O vs. statistical methods, etc. This
   separation fosters maintainability and clarity.

2. **Uniform CSV Assumption**:  
   The code expects all rows in a CSV to have the same number of fields,
   matching that of the header. This underlies the entire pipeline’s reliability
   and the creation of consistent numeric arrays for analysis.

3. **From Raw to Analyzable**:  
   The program carefully transforms raw CSV lines (often messy) into
   structured, pruned, and typed data. Numeric fields end up in separate `.txt`
   files, each suitable for direct numeric analysis or plotting.

4. **Extensible**:  
   Because the pipeline is mostly “once interpreted, consistently used,” it is
   straightforward to drop in new analysis routines, new modeling scripts, or
   new transformations. You can freely introduce new date/time formats
   (append them to `commonDateTimeFormats[]` in **CommonDefinitions.c**), or
   add new unit strings to `commonUnitFormats[]`. You might create new
   analysis routines in **StatisticalMethods.c** or even integrate an R or Python
   script instead of MATLAB scripts. The pipeline is flexible:

   - If you want to store the cleaned CSV lines (with replaced missing
     values) in a single new file, just call
     `DataExtraction::write_data_set(…)`.
   - If you want advanced outlier detection, you can place that after the
     numeric columns are extracted, or incorporate it into
     `format_data_entry_for_plotting(...)`.

5. **Power of Radix Sort**:  
   A highlight is the specialized `radix_sort_doubles`, which demonstrates
   bitwise manipulation to handle negative doubles. Though not always
   needed for typical CSV tasks, it shows advanced usage that can scale to
   large data sets.


