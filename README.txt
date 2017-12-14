*****************************************************************


                     FSC RATER BATCH FILES
                          
           
             
*****************************************************************

Index:
1. About FSCUpdate.bat
2. About FSCReinstall.bat
3. FSCRater_CA_135.exe
4. Update Notes


*****************************************************************

   1. About FSCUpdate.bat

*****************************************************************


-What it is
   FSCUpdate.bat is a script that will update the ftpupdt.ini file automatically. 
   Specifically, the following line will be updated:InternetSite= from 
   "FTP" to "HTTP" 
   Following that update, ftpupdt.exe launches and the program is updated.


*****************************************************************

   2. About FSCReinstall.bat

*****************************************************************

-Uses
   FSCReinstall.bat is meant to resolve the following errors:
      1. Agency identification key is missing or invalid
      2. Reinstall prompts related to the .dll errors reported on Slack

-Requirements
      1. The FSC Rater program must have been previously installed on workstation.
      2. There must only be one "WinFSC" folder present on workstation.

RECOMMENDED: Rename any other existing to "WinFSC1, WinFSC2, etc" 
before launching batch file, or proceed with manual reinstall.

-How it works 
      1. Locate WinFSC folder wherever it is 
      2. Navigate to Program folder and rename incrementally Program1, 2, etc...
      3. Run FSCRater_CA_135.exe (full description below)
      4. Run FSCUpdate.bat script to update and launch FSC Rater program.

-IMPORTANT, PLEASE READ! 
ALL QUOTE DATA SHOULD BE BACKED UP BY CUSTOMER PRIOR TO USE.
ALL QUOTE DATA SHOULD BE BACKED UP BY CUSTOMER PRIOR TO USE.
ALL QUOTE DATA SHOULD BE BACKED UP BY CUSTOMER PRIOR TO USE.
ALL QUOTE DATA SHOULD BE BACKED UP BY CUSTOMER PRIOR TO USE.

      1. This batch file has only been tested in a local environment. 
      It should work regardless of Network or Local install, but requires 
      further testing to confirm. Proceed with caution. 

*****************************************************************

     3. About FSCRater_CA_135.exe

*****************************************************************

FSCRater_CA_135.exe is a self-extracting zip file which will install FSC Rater

-Made with WinRAR 5.30 (32-bit) 
   The comment below contains SFX script commands

      Setup=FSCRater_CA_135.exe
      SetupCode
      TempMode
      Overwrite=1

-To recreate this, open FSCRater_CA_135.zip with WinRAR and Navigate to 
Tools > Convert Archive to SFX >Advanced SFX Options...

   Select the following:
      Setup tab:
         -Run after Extraction: FSCRater_CA_135.exe
         -Checked box "Wait and return exit code"
        
      Modes tab:
         -Checked box "Unpack to temporary folder"
         -Silent mode = Display all
        
      Advanced tab:
         -checked box "Request administrative access"

      Update tab:
         -Selected Update mode: "Extract and replace files"
         -Selected Overwrite mode: "Overwrite all files"

-Recommended/Minimum System Requirements:
   * Refer to Internal Knowledge Base, search for DOC822

*****************************************************************
