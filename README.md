# Standardized_CSV_Data_Analysis


## 1. Statement of the Problem
The purpose of this project is to design and implement a standardized C CSV data analysis program capable of:
* Reading data from one or more CSV files with minimal assumptions on delimiting or formatting.
* Preprocessing data fields (e.g., removing extra whitespace, repeated delimiters, inconsistent hyphens, etc.).
* Identifying numeric (plottable) fields vs. non-numeric fields.
* Extracting numeric data fields into separate files for further statistical processing, histogram generation, normality tests, etc.
* Computing standard statistics (mean, std. dev., skewness) and normality tests (Anderson-Darling).
* Automatically generating MATLAB scripts to visualize histograms and normal fits for each numeric field.
The final outcome is a reproducible pipeline for CSV data ingestion, cleaning, analysis, and scripting for easy plotting.



## 2. Description of Solution
2.1 Math Analysis
Core mathematical components include:
1. Statistical computations:
    * Mean, standard deviation, skewness, Anderson–Darling normality test.
    * Freedman-Diaconis rule (based on IQR) to determine optimal bin width for histograms.
    * Sorting (e.g., radix sort on double-precision bit patterns).
2. Histogram binning:
    * Freedman–Diaconis rule to compute the bin width.
    * Counting occurrences in each bin to form histograms.
3. Reading/writing CSV:
    * Parsing CSV data into arrays.
    * Handling missing fields and non-numeric tokens.
An optional MATLAB .m script automatically overlays normal distribution curves (using computed μ and σ) on the histograms.


2.2 Program Structure and Flow
The program is divided into modular components:
* CommonDefinitions.c/h Contains constants, macros (array sizes, date/time format arrays).
* GeneralUtilities.c/h Memory allocation and array-copy functions. May include sorting (e.g., radix_sort_doubles).
* StringUtilities.c/h Functions for trimming strings, identifying delimiters, handling repeated commas, etc.
* FileUtilities.c/h File and directory operations (counting lines, reading contents, creating directories, etc.).
* DataExtraction.c/h Extracts CSV fields, identifies missing vs. valid values, separates numeric (plottable) from non-numeric fields.
* Integrators.c/h (Optional) Example numerical integrators: trapezoidal, Romberg, or Euler’s method, etc.
* StatisticalMethods.c/h Statistical computations (mean, std. dev., skewness, A–D normality test, histogram binning).
* PlottingMethods.c/h Generation of MATLAB scripts (histogram overlays, normal PDF curves).
* DataAnalysis.c/h Higher-level orchestration: reading CSV, calling formatting steps, writing numeric fields to disk, performing full analysis.
* DebuggingUtilities.c/h Functions that help print internal data structures and debug information.
* main.c The entry point orchestrates reading CSV files, calling data extraction, analysis, and generating plots.
2.3 Algorithmic Overview
Below is a simplified pseudocode illustrating the high-level approach:
Function PreprocessData(filePathName):
    fileContents ← read_file_contents(filePathName)
    delimiter    ← identify_delimiter(fileContents)
    extract_and_format_data_set(fileContents, delimiter)
    write_data_set(fileContents, filePathName)
    return directory with separate fields

Function AnalyzeData(preparedDirectory):
    perform_statistical_analysis_on_plottable_data(preparedDirectory)
    generate_matlab_scripts()
An alternative version with more detail:
Function ProcessDataSetForAnalysis(filePath):
    lines      ← ReadFile(filePath)
    delimiter  ← IdentifyDelimiter(lines)
    preprocessed ← ExtractAndFormatData(lines, delimiter)
    plottableDir ← WriteDataSet(preprocessed, filePath, …)
    Print("Data set preprocessed and stored in plottableDir")
    return plottableDir

Function PerformFullAnalysisAndModeling(plottableDir):
    fileList  ← GetFilePathnamesInDirectory(plottableDir)
    for file in fileList:
        data ← LoadDoubleData(file)
        compute mean, std, skewness, histogram, AD_stat
        WriteStats("field_analysis.txt", …)
        WriteHistogram("field_histogram.txt", …)
    GenerateMATLABscripts(…)
2.4 Logic Flow and Workflow
1. Initial Capture Read the entire CSV file line by line into a string array.
2. Delimiter Determination Inspect likely delimiters (commas, tabs, etc.) across sample lines to guess the file’s delimiter.
3. Extraction/Formatting
    * Tokenize lines.
    * Clean repeated delimiters.
    * Trim whitespace.
    * Convert date/time fields to Unix time (if applicable).
    * Identify numeric vs. non-numeric tokens.
4. Plottable Data Writing Store each numeric field in its own FieldName.txt file in a _Plottable_Fields directory.
5. Statistical Analysis
    * Calculate mean, standard deviation, skewness.
    * Perform Anderson–Darling (A–D) normality test.
    * Compute Freedman–Diaconis bin width and histogram.
6. MATLAB Script Generation Produce .m scripts for each numeric field, plotting a histogram overlayed with a normal PDF.



## 3. Testing and Output
Several test CSV files were used to verify correctness:
* weather_measurements.csv: Contains numeric columns (e.g., temperature, humidity) and textual date/time fields.
* particle_experiment.csv: Mixture of mass, charge, and string descriptors.
Expected Results:
1. A _Plottable_Fields_Directory containing numeric columns as individual .txt files.
2. A _Full_Analysis_Results/ directory with:
    * A histogram for each numeric column.
    * Statistical summaries (mean, std. dev., skewness, A–D statistic).
    * MATLAB scripts that plot histograms with an overlaid normal curve.



## 4. Conclusions
By modularizing the program into distinct C source/include files, we gain maintainability, clarity, and extensibility. The core pipeline is:
1. Parsing/Cleaning CSV Data
2. Identifying Numeric vs. Non-numeric Fields
3. Computing Standard Statistics and Normality Testing
4. Generating MATLAB Scripts for Easy Visualization
This structure can be extended to more complex transformations, different file formats, or advanced plotting routines.

