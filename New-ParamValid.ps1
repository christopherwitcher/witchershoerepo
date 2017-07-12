    [CmdletBinding()]
    param(
        [Parameter(
        Mandatory=$True, 
        HelpMessage="Username of the person or application running the script.")]
        [string]$Initiator,

        [Parameter(Mandatory=$True, HelpMessage="Enter new resource group name.")]
        [string]$ResourceGroupName,

        [Parameter(Mandatory=$False, HelpMessage="Enter an optional location in which to add the Resource Group.")]
        [ValidateSet("East US", "West US", "West Europe", "Southeast Asia", "eastus", "westus", "westeurope", "southeastasia")]
        [AllowedValues()]
        [String]$Location,

        [Parameter(Mandatory=$True, HelpMessage="Enter the Name of the Owner")]
        [string]$Ownertag,

        [Parameter(Mandatory=$True, HelpMessage="Enter the lst-*@nike.com email group of the supporting team")]
        [string]$owningGrouptag,
        
        [Parameter(Mandatory=$True, HelpMessage="Enter the CostCenter.")]
        [string]$costCentertag,

        [Parameter(Mandatory=$False, HelpMessage="Enter the email addresses of all support members")]
        [Array]$Supportmembers = '',

        [Parameter(Mandatory=$False, HelpMessage="Enter the Environment of the Virtual Machine. (dev/test/qa/prod)")]
        [string]$environmenttag,

        [Parameter(Mandatory=$False, HelpMessage="Enter the project Code.")]
        [string]$projectCodetag,

        [Parameter(Mandatory=$False, HelpMessage="Set to True to skip creation of AD Groups and adding the Roles.")]
        [bool]$skiproles = $false

    )

 
    #Completed
    $Completed = (get-date) - $starttime
    $Output =  "[$(get-date -Format HH:mm:ss)] Script Completed in {0:g}" -f $Completed
    Write-Output $Output
