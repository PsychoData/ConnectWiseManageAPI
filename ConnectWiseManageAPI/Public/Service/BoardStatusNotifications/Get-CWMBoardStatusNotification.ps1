﻿function Get-CWMBoardStatusNotification {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true)]
        [int]$ServiceBoardID,
        [int]$StatusID,
        [string]$Condition,
        [ValidatePattern('\S* (desc|asc)')]
        [string]$orderBy,
        [string]$childConditions,
        [string]$customFieldConditions,
        [int]$page,
        [int]$pageSize,
        [string[]]$fields,
        [switch]$all
    )
    $URI = "https://$($script:CWMServerConnection.Server)/v4_6_release/apis/3.0/service/boards/$($ServiceBoardID)/statuses/$($StatusID)/notifications"
    return Invoke-CWMGetMaster -Arguments $PsBoundParameters -URI $URI
}