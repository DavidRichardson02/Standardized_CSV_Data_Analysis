//  main.c
//  CSV_Data_Set_Analysis


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <math.h>

#include "CommonDefinitions.h"
#include "GeneralUtilities.h"
#include "StringUtilities.h"
#include "FileUtilities.h"
#include "DataExtraction.h"
#include "Integrators.h"
#include "StatisticalMethods.h"
#include "DataSetModeling.h"
#include "DataAnalysis.h"
#include "DebuggingUtilities.h"


/**
 * run_multiple_data_sets
 *
 * This function is designed to process multiple data sets by iterating through a list of file paths.
 * For each data set, it performs a series of operations including processing, statistical analysis, and modeling.
 *
 * Execution Overview:
 * 	1. Iterate over each data set path provided.
 * 	2. For each path, process the data set to obtain a preprocessed data directory.
 * 	3. Perform statistical analysis on the preprocessed data.
 * 	4. Conduct full analysis and modeling on the data.
 * 	5. Output the results of the analysis and modeling.
 *
 * Parameters:
 * - dataSetPaths: An array of strings, where each string is a file path to a data set.
 * - numDataSets: The number of data sets to process, represented as a size_t.
 *
 *
 * This function encapsulates the entire workflow of running analyses on multiple data sets,
 * making it easier to manage and extend for additional data sets.
 */
void run_multiple_data_sets(const char **dataSetPaths, size_t numDataSets)
{
	DataSetAnalysis *dataAnalysisArray = (DataSetAnalysis*)malloc(numDataSets * sizeof(DataSetAnalysis));
	const char *preprocessedDataDirectories[numDataSets];
	const char *analysisDataDirectories[numDataSets];
	for (size_t i = 0; i < numDataSets; ++i)
	{
		/// Process the data set
		dataAnalysisArray[i] = process_data_set_for_analysis(dataSetPaths[i]);
		preprocessedDataDirectories[i] = dataAnalysisArray[i].plottableDataDirectory.directoryPathName;
		
		
		
		/// Perform statistical analysis on the preprocessed data
		print_written_data_set(preprocessedDataDirectories[i]);
		print_directory_propertiees(dataAnalysisArray[i].plottableDataDirectory);
		
		
		/// Conduct full analysis and modeling
		analysisDataDirectories[i] = perform_full_analysis_and_modeling(preprocessedDataDirectories[i]);
		printf("Analysis and modeling results written to: %s\n", analysisDataDirectories[i]);
		print_written_data_set(analysisDataDirectories[i]);
	}
}




/*
 * main
 *
 * This function serves as the entry point for the program. It orchestrates the execution of data analysis on multiple data sets.
 * The function is responsible for setting up the data set paths, determining the number of data sets, and invoking the analysis
 * functions to process and analyze each data set. It also contains commented-out sections for single data set execution and
 * testing unit extraction, which can be used for further development or testing purposes.
 */
int main(int argc, const char * argv[])
{
	/*-----------   Run Multiple Data Sets   -----------* /
	///
	///
	///
	/// Set up the paths for the data sets to be processed
	/// User-Provide Pathname(Hardcoded for now)
	const char *dataSetFilePaths[] = {
		"/Users/98dav/Desktop/Xcode/ECE-370_Project/CSV_Data_Set_Analysis/physics_particles.txt",
		"/Users/98dav/Desktop/Xcode/ECE-370_Project/CSV_Data_Set_Analysis/weather_measurements.txt",
		///
	};
	
	// Determine the number of data sets
	size_t numDataSets = sizeof(dataSetFilePaths) / sizeof(dataSetFilePaths[0]);
	
	/*-----------   Run Multiple Data Sets   -----------* /
	// Execute the analysis on multiple data sets
	run_multiple_data_sets(dataSetFilePaths, numDataSets);
	//*/
	
	
	
	
	/// /*-----------   Single Data Set Execution   -----------*/
	///
	///
	////*
	// /*-----------   User-Provide Pathname(Hardcoded for now)   -----------* /
	 const char *dataSetFilePathName = "/Users/98dav/Desktop/Xcode/C-Programs/CSV_Data_Set_Analysis/physics_particles.txt"; // Pathname to data set
	char **blindlyExtractedDataSet = blindly_extract_data_set(dataSetFilePathName, count_file_lines(dataSetFilePathName, MAX_NUM_FILE_LINES));
	
	
	
	
	 
	//  /*-----------   Run Data Set   -----------* /
	 DataSetAnalysis dataAnalysis = process_data_set_for_analysis(dataSetFilePathName);
	 const char *preprocessedDataDirectory = dataAnalysis.plottableDataDirectory.directoryPathName;
	 

	 // Perform statistical analysis on the preprocessed data
	 //print_written_data_set(preprocessedDataDirectory);
	 print_directory_propertiees(dataAnalysis.plottableDataDirectory);
	 
	 
	 
	 const char *analysisDir = perform_full_analysis_and_modeling(preprocessedDataDirectory);
	DirectoryProperties analysisDirectoryProperties = extract_directory_properties(analysisDir);
	print_directory_propertiees(analysisDirectoryProperties);
	//print_written_data_set(analysisDir);
	 //*/
	
	
	
	
	
	
	
	/// TESTING UNIT EXTRACTION
	/*
	 /*-----------   Begin Preprocessing File Contents to Standardize the Format and Achieve/Maintain Compatibility of the Contents   -----------* /
	 int fieldCount = count_data_fields(fileContents[0]);
	 char **formattedFileContents = fileContents;
	 char *headerLine = prune_and_trim_problematic_characters_from_string(fileContents[1], delimiter, fieldCount);
	 for(int i = 1; i < lineCount; i++)
	 {
	 formattedFileContents[i] = prune_and_trim_problematic_characters_from_string(fileContents[i], delimiter, fieldCount);
	 }
	 /// Individually preprocess, format, and capture each line of the data set in order to achieve a fully preprocessed/formatted data set
	 for(int i = 1; i < lineCount; i++)
	 {
	 /// Examine each data entry and filter out problematic characters, omit or replace disruptive aspects(such as repeated delimiters, whitespaces,
	 /// unexpected date/time formats, etc.), and standardize the arrangement of characters representing information for each data entry
	 char *dataEntry =  prune_and_trim_problematic_characters_from_string(fileContents[i], delimiter, fieldCount);
	 /// Pass the now preprocessed 'dataEntry' to the utility function, 'format_data_entry_for_plotting', where it will be formatted to ensure each one of it's
	 /// field's is of the correct data type, and correctly handling the case(s) when it they are not(i.e., if the field missing, mismatched data type, etc.), in order to
	 /// ensure compatibility with the rest of the program before being captured as an element of the 'formattedFileContents'
	 formattedFileContents[i] = format_data_entry_for_plotting(headerLine, dataEntry, fieldCount, delimiter);
	 }
	 char **extractedUnits = extract_units_from_fields(formattedFileContents[1], delimiter, fieldCount);
	 //char *extractedUnitsString = concatenate_string_array(extractedUnits, fieldCount, delimiter);
	 //printf("\n Extracted Units: %s", extractedUnitsString);
	 //print_string_array(extractedUnits, fieldCount, "extract_units_from_fields");
	 //*/
	
	return 0;
}


