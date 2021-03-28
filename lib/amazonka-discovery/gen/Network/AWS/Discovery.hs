{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Discovery
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS Application Discovery Service__ 
--
-- AWS Application Discovery Service helps you plan application migration projects. It automatically identifies servers, virtual machines (VMs), and network dependencies in your on-premises data centers. For more information, see the <http://aws.amazon.com/application-discovery/faqs/ AWS Application Discovery Service FAQ> . Application Discovery Service offers three ways of performing discovery and collecting data about your on-premises servers:
--
--     * __Agentless discovery__ is recommended for environments that use VMware vCenter Server. This mode doesn't require you to install an agent on each host. It does not work in non-VMware environments.
--
--     * Agentless discovery gathers server information regardless of the operating systems, which minimizes the time required for initial on-premises infrastructure assessment.
--
--
--     * Agentless discovery doesn't collect information about network dependencies, only agent-based discovery collects that information.
--
--
--
--
--
--     * __Agent-based discovery__ collects a richer set of data than agentless discovery by using the AWS Application Discovery Agent, which you install on one or more hosts in your data center.
--
--     * The agent captures infrastructure and application information, including an inventory of running processes, system performance information, resource utilization, and network dependencies.
--
--
--     * The information collected by agents is secured at rest and in transit to the Application Discovery Service database in the cloud. 
--
--
--
--
--
--     * __AWS Partner Network (APN) solutions__ integrate with Application Discovery Service, enabling you to import details of your on-premises environment directly into Migration Hub without using the discovery connector or discovery agent.
--
--     * Third-party application discovery tools can query AWS Application Discovery Service, and they can write to the Application Discovery Service database using the public API.
--
--
--     * In this way, you can import data into Migration Hub and view it, so that you can associate applications with servers and track migrations.
--
--
--
--
-- __Recommendations__ 
-- We recommend that you use agent-based discovery for non-VMware environments, and whenever you want to collect information about network dependencies. You can run agent-based and agentless discovery simultaneously. Use agentless discovery to complete the initial infrastructure assessment quickly, and then install agents on select hosts to collect additional information.
-- __Working With This Guide__ 
-- This API reference provides descriptions, syntax, and usage examples for each of the actions and data types for Application Discovery Service. The topic for each action shows the API request parameters and the response. Alternatively, you can use one of the AWS SDKs to access an API that is tailored to the programming language or platform that you're using. For more information, see <http://aws.amazon.com/tools/#SDKs AWS SDKs> .
-- This guide is intended for use with the <http://docs.aws.amazon.com/application-discovery/latest/userguide/ AWS Application Discovery Service User Guide> .
-- /Important:/ All data is handled according to the <http://aws.amazon.com/privacy/ AWS Privacy Policy> . You can operate Application Discovery Service offline to inspect collected data before it is shared with the service.
module Network.AWS.Discovery
    (
    -- * Service configuration
      mkServiceConfig

    -- * Errors
    -- $errors

    -- ** AuthorizationErrorException
    , _AuthorizationErrorException

    -- ** HomeRegionNotSetException
    , _HomeRegionNotSetException

    -- ** InvalidParameterException
    , _InvalidParameterException

    -- ** ConflictErrorException
    , _ConflictErrorException

    -- ** InvalidParameterValueException
    , _InvalidParameterValueException

    -- ** ServerInternalErrorException
    , _ServerInternalErrorException

    -- ** OperationNotPermittedException
    , _OperationNotPermittedException

    -- ** ResourceNotFoundException
    , _ResourceNotFoundException

    -- ** ResourceInUseException
    , _ResourceInUseException

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** DescribeTags (Paginated)
    , module Network.AWS.Discovery.DescribeTags

    -- ** DescribeContinuousExports (Paginated)
    , module Network.AWS.Discovery.DescribeContinuousExports

    -- ** StopDataCollectionByAgentIds 
    , module Network.AWS.Discovery.StopDataCollectionByAgentIds

    -- ** CreateTags 
    , module Network.AWS.Discovery.CreateTags

    -- ** BatchDeleteImportData 
    , module Network.AWS.Discovery.BatchDeleteImportData

    -- ** DeleteTags 
    , module Network.AWS.Discovery.DeleteTags

    -- ** StartImportTask 
    , module Network.AWS.Discovery.StartImportTask

    -- ** DeleteApplications 
    , module Network.AWS.Discovery.DeleteApplications

    -- ** UpdateApplication 
    , module Network.AWS.Discovery.UpdateApplication

    -- ** DescribeConfigurations 
    , module Network.AWS.Discovery.DescribeConfigurations

    -- ** DescribeImportTasks 
    , module Network.AWS.Discovery.DescribeImportTasks

    -- ** CreateApplication 
    , module Network.AWS.Discovery.CreateApplication

    -- ** ListConfigurations (Paginated)
    , module Network.AWS.Discovery.ListConfigurations

    -- ** StartContinuousExport 
    , module Network.AWS.Discovery.StartContinuousExport

    -- ** DescribeAgents (Paginated)
    , module Network.AWS.Discovery.DescribeAgents

    -- ** DescribeExportTasks (Paginated)
    , module Network.AWS.Discovery.DescribeExportTasks

    -- ** StartDataCollectionByAgentIds 
    , module Network.AWS.Discovery.StartDataCollectionByAgentIds

    -- ** GetDiscoverySummary 
    , module Network.AWS.Discovery.GetDiscoverySummary

    -- ** DisassociateConfigurationItemsFromApplication 
    , module Network.AWS.Discovery.DisassociateConfigurationItemsFromApplication

    -- ** AssociateConfigurationItemsToApplication 
    , module Network.AWS.Discovery.AssociateConfigurationItemsToApplication

    -- ** ListServerNeighbors 
    , module Network.AWS.Discovery.ListServerNeighbors

    -- ** StopContinuousExport 
    , module Network.AWS.Discovery.StopContinuousExport

    -- ** StartExportTask 
    , module Network.AWS.Discovery.StartExportTask

    -- * Types

    -- ** ConfigurationsDownloadUrl
    , ConfigurationsDownloadUrl (..)

    -- ** AgentInfo
    , AgentInfo (..)
    , mkAgentInfo
    , aiAgentId
    , aiAgentNetworkInfoList
    , aiAgentType
    , aiCollectionStatus
    , aiConnectorId
    , aiHealth
    , aiHostName
    , aiLastHealthPingTime
    , aiRegisteredTime
    , aiVersion

    -- ** FilterName
    , FilterName (..)

    -- ** ImportTaskFilterName
    , ImportTaskFilterName (..)

    -- ** ExportDataFormat
    , ExportDataFormat (..)

    -- ** Tag
    , Tag (..)
    , mkTag
    , tKey
    , tValue

    -- ** ExportInfo
    , ExportInfo (..)
    , mkExportInfo
    , eiExportId
    , eiExportStatus
    , eiStatusMessage
    , eiExportRequestTime
    , eiConfigurationsDownloadUrl
    , eiIsTruncated
    , eiRequestedEndTime
    , eiRequestedStartTime

    -- ** AgentConfigurationStatus
    , AgentConfigurationStatus (..)
    , mkAgentConfigurationStatus
    , acsAgentId
    , acsDescription
    , acsOperationSucceeded

    -- ** ConfigurationId
    , ConfigurationId (..)

    -- ** AgentStatus
    , AgentStatus (..)

    -- ** ContinuousExportStatus
    , ContinuousExportStatus (..)

    -- ** ExportStatus
    , ExportStatus (..)

    -- ** BatchDeleteImportDataError
    , BatchDeleteImportDataError (..)
    , mkBatchDeleteImportDataError
    , bdideErrorCode
    , bdideErrorDescription
    , bdideImportTaskId

    -- ** ImportTask
    , ImportTask (..)
    , mkImportTask
    , itApplicationImportFailure
    , itApplicationImportSuccess
    , itClientRequestToken
    , itErrorsAndFailedEntriesZip
    , itImportCompletionTime
    , itImportDeletedTime
    , itImportRequestTime
    , itImportTaskId
    , itImportUrl
    , itName
    , itServerImportFailure
    , itServerImportSuccess
    , itStatus

    -- ** ImportTaskIdentifier
    , ImportTaskIdentifier (..)

    -- ** StringMax255
    , StringMax255 (..)

    -- ** OrderString
    , OrderString (..)

    -- ** TagValue
    , TagValue (..)

    -- ** AgentNetworkInfo
    , AgentNetworkInfo (..)
    , mkAgentNetworkInfo
    , aniIpAddress
    , aniMacAddress

    -- ** NextToken
    , NextToken (..)

    -- ** AgentId
    , AgentId (..)

    -- ** ExportFilter
    , ExportFilter (..)
    , mkExportFilter
    , efName
    , efValues
    , efCondition

    -- ** ImportTaskName
    , ImportTaskName (..)

    -- ** ApplicationId
    , ApplicationId (..)

    -- ** ContinuousExportDescription
    , ContinuousExportDescription (..)
    , mkContinuousExportDescription
    , cedDataSource
    , cedExportId
    , cedS3Bucket
    , cedSchemaStorageConfig
    , cedStartTime
    , cedStatus
    , cedStatusDetail
    , cedStopTime

    -- ** ConfigurationsExportId
    , ConfigurationsExportId (..)

    -- ** TagFilter
    , TagFilter (..)
    , mkTagFilter
    , tfName
    , tfValues

    -- ** ConfigurationTag
    , ConfigurationTag (..)
    , mkConfigurationTag
    , ctConfigurationId
    , ctConfigurationType
    , ctKey
    , ctTimeOfCreation
    , ctValue

    -- ** DatabaseName
    , DatabaseName (..)

    -- ** ConfigurationItemType
    , ConfigurationItemType (..)

    -- ** NeighborConnectionDetail
    , NeighborConnectionDetail (..)
    , mkNeighborConnectionDetail
    , ncdSourceServerId
    , ncdDestinationServerId
    , ncdConnectionsCount
    , ncdDestinationPort
    , ncdTransportProtocol

    -- ** DataSource
    , DataSource (..)

    -- ** BatchDeleteImportDataErrorCode
    , BatchDeleteImportDataErrorCode (..)

    -- ** Filter
    , Filter (..)
    , mkFilter
    , fName
    , fValues
    , fCondition

    -- ** ImportTaskFilter
    , ImportTaskFilter (..)
    , mkImportTaskFilter
    , itfName
    , itfValues

    -- ** Condition
    , Condition (..)

    -- ** FilterValue
    , FilterValue (..)

    -- ** CustomerAgentInfo
    , CustomerAgentInfo (..)
    , mkCustomerAgentInfo
    , caiActiveAgents
    , caiHealthyAgents
    , caiBlackListedAgents
    , caiShutdownAgents
    , caiUnhealthyAgents
    , caiTotalAgents
    , caiUnknownAgents

    -- ** ImportTaskFilterValue
    , ImportTaskFilterValue (..)

    -- ** ClientRequestToken
    , ClientRequestToken (..)

    -- ** OrderByElement
    , OrderByElement (..)
    , mkOrderByElement
    , obeFieldName
    , obeSortOrder

    -- ** ImportURL
    , ImportURL (..)

    -- ** S3Bucket
    , S3Bucket (..)

    -- ** CustomerConnectorInfo
    , CustomerConnectorInfo (..)
    , mkCustomerConnectorInfo
    , cciActiveConnectors
    , cciHealthyConnectors
    , cciBlackListedConnectors
    , cciShutdownConnectors
    , cciUnhealthyConnectors
    , cciTotalConnectors
    , cciUnknownConnectors

    -- ** ImportStatus
    , ImportStatus (..)

    -- ** ExportId
    , ExportId (..)

    -- ** Key
    , Key (..)

    -- ** Value
    , Value (..)

    -- ** StatusMessage
    , StatusMessage (..)

    -- ** ErrorDescription
    , ErrorDescription (..)

    -- ** ImportTaskId
    , ImportTaskId (..)

    -- ** ErrorsAndFailedEntriesZip
    , ErrorsAndFailedEntriesZip (..)

    -- ** ImportUrl
    , ImportUrl (..)

    -- ** Name
    , Name (..)

    -- ** ApplicationConfigurationId
    , ApplicationConfigurationId (..)

    -- * Serialization types
    , Lude.Base64 (..)
    , Lude._Base64
    , Lude.Sensitive (..)
    , Lude._Sensitive
    , Lude.UTCTime
    , Lude.NominalDiffTime
    ) where

import Network.AWS.Discovery.Types
import Network.AWS.Discovery.Waiters
import Network.AWS.Discovery.DescribeTags
import Network.AWS.Discovery.DescribeContinuousExports
import Network.AWS.Discovery.StopDataCollectionByAgentIds
import Network.AWS.Discovery.CreateTags
import Network.AWS.Discovery.BatchDeleteImportData
import Network.AWS.Discovery.DeleteTags
import Network.AWS.Discovery.StartImportTask
import Network.AWS.Discovery.DeleteApplications
import Network.AWS.Discovery.UpdateApplication
import Network.AWS.Discovery.DescribeConfigurations
import Network.AWS.Discovery.DescribeImportTasks
import Network.AWS.Discovery.CreateApplication
import Network.AWS.Discovery.ListConfigurations
import Network.AWS.Discovery.StartContinuousExport
import Network.AWS.Discovery.DescribeAgents
import Network.AWS.Discovery.DescribeExportTasks
import Network.AWS.Discovery.StartDataCollectionByAgentIds
import Network.AWS.Discovery.GetDiscoverySummary
import Network.AWS.Discovery.DisassociateConfigurationItemsFromApplication
import Network.AWS.Discovery.AssociateConfigurationItemsToApplication
import Network.AWS.Discovery.ListServerNeighbors
import Network.AWS.Discovery.StopContinuousExport
import Network.AWS.Discovery.StartExportTask
import qualified Network.AWS.Prelude as Lude

{- $errors
Error matchers are designed for use with the functions provided by
<http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
This allows catching (and rethrowing) service specific errors returned
by 'Discovery'.
-}

{- $operations
Some AWS operations return results that are incomplete and require subsequent
requests in order to obtain the entire result set. The process of sending
subsequent requests to continue where a previous request left off is called
pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
1000 objects at a time, and you must send subsequent requests with the
appropriate Marker in order to retrieve the next page of results.

Operations that have an 'AWSPager' instance can transparently perform subsequent
requests, correctly setting Markers and other request facets to iterate through
the entire result set of a truncated API operation. Operations which support
this have an additional note in the documentation.

Many operations have the ability to filter results on the server side. See the
individual operation parameters for details.
-}

{- $waiters
Waiters poll by repeatedly sending a request until some remote success condition
configured by the 'Wait' specification is fulfilled. The 'Wait' specification
determines how many attempts should be made, in addition to delay and retry strategies.
-}
