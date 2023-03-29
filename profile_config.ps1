<# 
 ____             __ _ _         ____             __ _       
|  _ \ _ __ ___  / _(_) | ___   / ___|___  _ __  / _(_) __ _ 
| |_) | '__/ _ \| |_| | |/ _ \ | |   / _ \| '_ \| |_| |/ _` |
|  __/| | | (_) |  _| | |  __/ | |__| (_) | | | |  _| | (_| | 1.profile_config.ps1
|_|   |_|  \___/|_| |_|_|\___|  \____\___/|_| |_|_| |_|\__, | v1.0 | 26th-March-2023
                                                       |___/  

                                                    
.SYNOPSIS
    Control how the Microsoft.Profile_profile's script behaves

 .DESCRIPTION
    This PowerShell Script defines the rule for the profile's scripts that will be run on the 'PowerShell Terminal v.7.2.2 & above'      

.NOTES
    .TAGS
        ->  INFO
        ->  FILE
        ->  PATH
        ->  DEBUG
        ->  FEATURE
        ->  EXECUTABLE
        ->  ASSOCIATED
    .FUNCTIONS
        ->  See-Config()
        ->  Debug-Config()
 #>

 $INFO =  @{
    1 =  @{Title = "profile";              Desc = "SuperUser"}
    2 =  @{Title = "author";               Desc = "Sanjeev Stephan Murmu"}
    3 =  @{Title = "version";              Desc = "v1.0.0"}    
    4 =  @{Title = "github";               Desc = "https://github.com/SanjeevStephan/superuser"}        
}   

$FILE =  @{
    1 =  @{File = "profile";             Desc = "Microsoft.PowerShell_profile.ps1"}
    2 =  @{File = "configuration-file";  Desc = "profile_config.ps1"}
    3 =  @{File = "function-file";       Desc = "profile_function.ps1"}

}  
$TAG =  @{
    1 =  @{Title = "INFO";              Desc = "Display Profile Information"}
    2 =  @{Title = "FILE";              Desc = "List of Profile's Main File"}
    3 =  @{Title = "PATH";              Desc = "List of Profile's' Sub-Directories"}    
    4 =  @{Title = "DEBUG";             Desc = "Store Debug Status"}        
    5 =  @{Title = "FEATURE";           Desc = "Store Feature Status"}
    6 =  @{Title = "TABLE";             Desc = "List of Key-Value Info in Table-Format"}    
    7 =  @{Title = "EXECUTABLE";        Desc = "Store Executable Status"}        
    8 =  @{Title = "ASSOCIATED";        Desc = "List of File that is Associated with Specific JSON File"}    
    9 =  @{Title = "JSON";              Desc = "List of JSON File in .\myjson Directory"}        
  
} 
$DIRECTORY =  @{
    1 =  @{Title = "root_directory";     Path = "$Home\Documents\PowerShell"}   
    2 =  @{Title = "myfunctions";        Path = "$Home\Documents\PowerShell\myfunctions"}
    3 =  @{Title = "myjson";             Path = "$Home\Documents\PowerShell\myjson"}
    4 =  @{Title = "mypython";           Path = "$Home\Documents\PowerShell\mypython"}
    5 =  @{Title = "myscripts";          Path = "$Home\Documents\PowerShell\myscripts"}
    6 =  @{Title = "mytest";             Path = "$Home\Documents\PowerShell\mytest"}
}    
<#
    DEBUG -> enable | disable
#>
$DEBUG = @{
    1 =  @{Title = "initial_debug";      Status = "disable"}        
    2 =  @{Title = "debug_test";         Status = "disable"}
    3 =  @{Title = "debug_config";       Status = "disable"}
    4 =  @{Title = "debug_exec_script";  Status = "disable"}
    5 =  @{Title = "debug_include";      Status = "disable"}
    6 =  @{Title = "debug_path";         Status = "disable"}
    7 =  @{Title = "debug_function";     Status = "disable"}
    8 =  @{Title = "debug_json";         Status = "disable"}
    9 =  @{Title = "debug_dependencies"; Status = "disable"}
    10 =  @{Title = "debug_myfunction";  Status = "disable"}
    11 = @{Title = "debug_function";     Status = "disable"}   
    12 = @{Title = "debug_python";       Status = "disable"}   
}
$CHECKS = @{
    1 =  @{Title = "initial_check";      Status = "disable"}        
    2 =  @{Title = "check_everything";   Status = "disable"}
    3 =  @{Title = "check_config";       Status = "disable"}
    4 =  @{Title = "check_env";          Status = "disable"}
    5 =  @{Title = "check_include";      Status = "disable"}
    6 =  @{Title = "check_path";         Status = "disable"}
    7 =  @{Title = "check_function";     Status = "disable"}
    8 =  @{Title = "check_json";         Status = "disable"}
    9 =  @{Title = "check_dependencies"; Status = "disable"}
    10 =  @{Title = "check_myfunction";  Status = "disable"}
    11 = @{Title = "check_python";       Status = "disable"}   

}
<#  
    FEATURE -> enable | disable
#>
$FEATURE = @{
    1 =  @{Title = "ascii";         Status = "disable"}
    2 =  @{Title = "figlet";        Status = "disable"}
    3 =  @{Title = "dependencies";  Status = "disable"}
}
$TABLE = @{
    1 =  @{Title = "show_overview";            Status = "disable"}
    2 =  @{Title = "show_all_paths";           Status = "disable"}    
    3 =  @{Title = "show_all_scripts";         Status = "disable"}
    4 =  @{Title = "show_all_dependencies";    Status = "disable"}
    5 =  @{Title = "show_all_jsons";           Status = "disable"}   
    6 =  @{Title = "show_all_python_script";   Status = "disable"}
}
<#
    ExecutableScript => 'allow' | 'refuse'
#>
$EXECUTABLE = @{
    1 =  @{Title = "test";         Status = "allow"}
    2 =  @{Title = "test2";        Status = "allow"}
    3 =  @{Title = "exeScript";    Status = "allow"}
}

$ASSOCIATED = @{
    1 = @{Script = "include.ps1";         Json = "dependencies.json"}
    2 = @{Script = "getDependencies.ps1"; Json = "dependencies.json"}
    3 = @{Script = "getfunction.ps1";     Json = "profileFunctions.json"}
    4 = @{Script = "getPath.ps1";         Json = "directories.json"}
    5 = @{Script = "getScript.ps1";       Json = "myJsonList.json"}
    6 = @{Script = "execScript.ps1";      Json = "myScripts.json"}
}

$JSON = @{
    1 = @{Title = "dependencies";         File = "dependencies.json";    Path = "$($DIRECTORY[3]["Path"])\dependencies.json" }
    2 = @{Title = "directories";          File = "directories.json" ;    Path = "$($DIRECTORY[3]["Path"])\directories.json"}
    3 = @{Title = "myFunctions";          File = "myFunctions.json";     Path = "$($DIRECTORY[3]["Path"])\myFunctions.json"}
    4 = @{Title = "myIncludes";           File = "myIncludes.json";      Path = "$($DIRECTORY[3]["Path"])\myIncludes.json"}
    5 = @{Title = "myJsonList";           File = "myJsonList.json";      Path = "$($DIRECTORY[3]["Path"])\myJsonList.json"}
    6 = @{Title = "myScripts";            File = "myScripts.json";       Path = "$($DIRECTORY[3]["Path"])\myScripts.json"}
    7 = @{Title = "profileFunction";      File = "profileFunction.json"; Path = "$($DIRECTORY[3]["Path"])\profileFunctions.json"}
    8 = @{Title = "myPython";             File = "myPythonScript.json";  Path = "$($DIRECTORY[3]["Path"])\myPythonScript.json"}
}
function Show-Config($tag_name) 
{ 

    switch($tag_name)
    {
        "info" { $INFO.GetEnumerator() | Sort-Object | Format-Table @{label="Serial"; expression={$_.Key}}, @{label="Profile INFO"; expression={$_.Value.Title}}, @{label="Description"; expression={$_.Value.DESC}} -AutoSize }
        "file" { $FILE.GetEnumerator() | Sort-Object | Format-Table @{label="Serial"; expression={$_.Key}}, @{label="Main File"; expression={$_.Value.File}}, @{label="Description"; expression={$_.Value.Desc}} -AutoSize  }
        "dir"  { $DIRECTORY.GetEnumerator() | Sort-Object | Format-Table @{label="Serial"; expression={$_.Key}}, @{label="PATH Title"; expression={$_.Value.Title}}, @{label="Directory"; expression={$_.Value.Path}} -AutoSize  }
        Default 
        {
            $INFO.GetEnumerator() | Sort-Object | Format-Table @{label="Serial"; expression={$_.Key}}, @{label="Profile INFO"; expression={$_.Value.Title}}, @{label="Description"; expression={$_.Value.DESC}} -AutoSize
            $FILE.GetEnumerator() | Sort-Object | Format-Table @{label="Serial"; expression={$_.Key}}, @{label="Main File"; expression={$_.Value.File}}, @{label="Description"; expression={$_.Value.Desc}} -AutoSize  
            $DIRECTORY.GetEnumerator() | Sort-Object | Format-Table @{label="Serial"; expression={$_.Key}}, @{label="PATH Title"; expression={$_.Value.Title}}, @{label="Directory"; expression={$_.Value.Path}} -AutoSize    
            $DEBUG.GetEnumerator() | Sort-Object | Format-Table @{label="Serial"; expression={$_.Key}}, @{label="DEBUG Title"; expression={$_.Value.Title}}, @{label="Debug Status"; expression={$_.Value.Status}} -AutoSize
            $TAG.GetEnumerator() | Sort-Object | Format-Table @{label="Serial"; expression={$_.Key}}, @{label="TAG Title"; expression={$_.Value.Title}}, @{label="Debug Status"; expression={$_.Value.Desc}} -AutoSize
            $JSON.GetEnumerator() | Sort-Object | Format-Table @{label="Serial"; expression={$_.Key}}, @{label="JSON Title"; expression={$_.Value.Title}}, @{label="JSON File"; expression={$_.Value.File}} , @{label="File Path"; expression={$_.Value.Path}}-AutoSize
            $TABLE.GetEnumerator() | Sort-Object | Format-Table @{label="Serial"; expression={$_.Key}}, @{label="TABLE List Title"; expression={$_.Value.Title}}, @{label="List Status"; expression={$_.Value.Status}} -AutoSize
            $FEATURE.GetEnumerator() | Sort-Object | Format-Table @{label="Serial"; expression={$_.Key}}, @{label="Feature Title"; expression={$_.Value.Title}}, @{label="Feature Status"; expression={$_.Value.Status}} -AutoSize  
            $EXECUTABLE.GetEnumerator() | Sort-Object | Format-Table @{label="Serial"; expression={$_.Key}}, @{label="EXECUTABLE Title"; expression={$_.Value.Title}}, @{label="Executable Status"; expression={$_.Value.Status}} -AutoSize    
            $ASSOCIATED.GetEnumerator() | Sort-Object | Format-Table @{label="Serial"; expression={$_.Key}}, @{label="JSON Associated File"; expression={$_.Value.Script}}, @{label="JSON In-Use"; expression={$_.Value.Json}} -AutoSize    
        
        }
    }

 }
#>
function Debug-Config() {

    if($DEBUG[2]["Status"] -eq "enable")     # debug_config 
    { 
        Write-Output "[ OK ] Profile Config => { profile_config.ps1 } Loaded Successfully"} else { <# Do Nothing #>
        # Write-Output "Accessing Item at HashTable [1] Title : $($DEBUG[1]["Title"]) | Status : $($DEBUG[1]["Status"])" 
    }
  # if($DEBUG[2]["Status"] -eq "disable"){ 
}

Debug-Config

