{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.AWS.Shield
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2016-06-02@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- Shield Advanced
--
-- This is the /Shield Advanced API Reference/. This guide is for
-- developers who need detailed information about the Shield Advanced API
-- actions, data types, and errors. For detailed information about WAF and
-- Shield Advanced features and an overview of how to use the WAF and
-- Shield Advanced APIs, see the
-- <https://docs.aws.amazon.com/waf/latest/developerguide/ WAF and Shield Developer Guide>.
module Network.AWS.Shield
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** InvalidResourceException
    _InvalidResourceException,

    -- ** AccessDeniedException
    _AccessDeniedException,

    -- ** InvalidParameterException
    _InvalidParameterException,

    -- ** LimitsExceededException
    _LimitsExceededException,

    -- ** InternalErrorException
    _InternalErrorException,

    -- ** ResourceAlreadyExistsException
    _ResourceAlreadyExistsException,

    -- ** OptimisticLockException
    _OptimisticLockException,

    -- ** NoAssociatedRoleException
    _NoAssociatedRoleException,

    -- ** AccessDeniedForDependencyException
    _AccessDeniedForDependencyException,

    -- ** InvalidOperationException
    _InvalidOperationException,

    -- ** LockedSubscriptionException
    _LockedSubscriptionException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** InvalidPaginationTokenException
    _InvalidPaginationTokenException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** AssociateDRTLogBucket
    AssociateDRTLogBucket (AssociateDRTLogBucket'),
    newAssociateDRTLogBucket,
    AssociateDRTLogBucketResponse (AssociateDRTLogBucketResponse'),
    newAssociateDRTLogBucketResponse,

    -- ** DisassociateDRTRole
    DisassociateDRTRole (DisassociateDRTRole'),
    newDisassociateDRTRole,
    DisassociateDRTRoleResponse (DisassociateDRTRoleResponse'),
    newDisassociateDRTRoleResponse,

    -- ** CreateSubscription
    CreateSubscription (CreateSubscription'),
    newCreateSubscription,
    CreateSubscriptionResponse (CreateSubscriptionResponse'),
    newCreateSubscriptionResponse,

    -- ** ListProtections (Paginated)
    ListProtections (ListProtections'),
    newListProtections,
    ListProtectionsResponse (ListProtectionsResponse'),
    newListProtectionsResponse,

    -- ** AssociateDRTRole
    AssociateDRTRole (AssociateDRTRole'),
    newAssociateDRTRole,
    AssociateDRTRoleResponse (AssociateDRTRoleResponse'),
    newAssociateDRTRoleResponse,

    -- ** UpdateSubscription
    UpdateSubscription (UpdateSubscription'),
    newUpdateSubscription,
    UpdateSubscriptionResponse (UpdateSubscriptionResponse'),
    newUpdateSubscriptionResponse,

    -- ** ListTagsForResource
    ListTagsForResource (ListTagsForResource'),
    newListTagsForResource,
    ListTagsForResourceResponse (ListTagsForResourceResponse'),
    newListTagsForResourceResponse,

    -- ** DisassociateDRTLogBucket
    DisassociateDRTLogBucket (DisassociateDRTLogBucket'),
    newDisassociateDRTLogBucket,
    DisassociateDRTLogBucketResponse (DisassociateDRTLogBucketResponse'),
    newDisassociateDRTLogBucketResponse,

    -- ** AssociateProactiveEngagementDetails
    AssociateProactiveEngagementDetails (AssociateProactiveEngagementDetails'),
    newAssociateProactiveEngagementDetails,
    AssociateProactiveEngagementDetailsResponse (AssociateProactiveEngagementDetailsResponse'),
    newAssociateProactiveEngagementDetailsResponse,

    -- ** DescribeAttack
    DescribeAttack (DescribeAttack'),
    newDescribeAttack,
    DescribeAttackResponse (DescribeAttackResponse'),
    newDescribeAttackResponse,

    -- ** ListProtectionGroups
    ListProtectionGroups (ListProtectionGroups'),
    newListProtectionGroups,
    ListProtectionGroupsResponse (ListProtectionGroupsResponse'),
    newListProtectionGroupsResponse,

    -- ** EnableProactiveEngagement
    EnableProactiveEngagement (EnableProactiveEngagement'),
    newEnableProactiveEngagement,
    EnableProactiveEngagementResponse (EnableProactiveEngagementResponse'),
    newEnableProactiveEngagementResponse,

    -- ** UpdateEmergencyContactSettings
    UpdateEmergencyContactSettings (UpdateEmergencyContactSettings'),
    newUpdateEmergencyContactSettings,
    UpdateEmergencyContactSettingsResponse (UpdateEmergencyContactSettingsResponse'),
    newUpdateEmergencyContactSettingsResponse,

    -- ** CreateProtectionGroup
    CreateProtectionGroup (CreateProtectionGroup'),
    newCreateProtectionGroup,
    CreateProtectionGroupResponse (CreateProtectionGroupResponse'),
    newCreateProtectionGroupResponse,

    -- ** DisableProactiveEngagement
    DisableProactiveEngagement (DisableProactiveEngagement'),
    newDisableProactiveEngagement,
    DisableProactiveEngagementResponse (DisableProactiveEngagementResponse'),
    newDisableProactiveEngagementResponse,

    -- ** DisassociateHealthCheck
    DisassociateHealthCheck (DisassociateHealthCheck'),
    newDisassociateHealthCheck,
    DisassociateHealthCheckResponse (DisassociateHealthCheckResponse'),
    newDisassociateHealthCheckResponse,

    -- ** ListResourcesInProtectionGroup
    ListResourcesInProtectionGroup (ListResourcesInProtectionGroup'),
    newListResourcesInProtectionGroup,
    ListResourcesInProtectionGroupResponse (ListResourcesInProtectionGroupResponse'),
    newListResourcesInProtectionGroupResponse,

    -- ** DescribeProtection
    DescribeProtection (DescribeProtection'),
    newDescribeProtection,
    DescribeProtectionResponse (DescribeProtectionResponse'),
    newDescribeProtectionResponse,

    -- ** ListAttacks (Paginated)
    ListAttacks (ListAttacks'),
    newListAttacks,
    ListAttacksResponse (ListAttacksResponse'),
    newListAttacksResponse,

    -- ** DescribeEmergencyContactSettings
    DescribeEmergencyContactSettings (DescribeEmergencyContactSettings'),
    newDescribeEmergencyContactSettings,
    DescribeEmergencyContactSettingsResponse (DescribeEmergencyContactSettingsResponse'),
    newDescribeEmergencyContactSettingsResponse,

    -- ** CreateProtection
    CreateProtection (CreateProtection'),
    newCreateProtection,
    CreateProtectionResponse (CreateProtectionResponse'),
    newCreateProtectionResponse,

    -- ** DeleteProtection
    DeleteProtection (DeleteProtection'),
    newDeleteProtection,
    DeleteProtectionResponse (DeleteProtectionResponse'),
    newDeleteProtectionResponse,

    -- ** GetSubscriptionState
    GetSubscriptionState (GetSubscriptionState'),
    newGetSubscriptionState,
    GetSubscriptionStateResponse (GetSubscriptionStateResponse'),
    newGetSubscriptionStateResponse,

    -- ** DeleteProtectionGroup
    DeleteProtectionGroup (DeleteProtectionGroup'),
    newDeleteProtectionGroup,
    DeleteProtectionGroupResponse (DeleteProtectionGroupResponse'),
    newDeleteProtectionGroupResponse,

    -- ** UpdateProtectionGroup
    UpdateProtectionGroup (UpdateProtectionGroup'),
    newUpdateProtectionGroup,
    UpdateProtectionGroupResponse (UpdateProtectionGroupResponse'),
    newUpdateProtectionGroupResponse,

    -- ** DescribeAttackStatistics
    DescribeAttackStatistics (DescribeAttackStatistics'),
    newDescribeAttackStatistics,
    DescribeAttackStatisticsResponse (DescribeAttackStatisticsResponse'),
    newDescribeAttackStatisticsResponse,

    -- ** TagResource
    TagResource (TagResource'),
    newTagResource,
    TagResourceResponse (TagResourceResponse'),
    newTagResourceResponse,

    -- ** DescribeDRTAccess
    DescribeDRTAccess (DescribeDRTAccess'),
    newDescribeDRTAccess,
    DescribeDRTAccessResponse (DescribeDRTAccessResponse'),
    newDescribeDRTAccessResponse,

    -- ** UntagResource
    UntagResource (UntagResource'),
    newUntagResource,
    UntagResourceResponse (UntagResourceResponse'),
    newUntagResourceResponse,

    -- ** DescribeSubscription
    DescribeSubscription (DescribeSubscription'),
    newDescribeSubscription,
    DescribeSubscriptionResponse (DescribeSubscriptionResponse'),
    newDescribeSubscriptionResponse,

    -- ** AssociateHealthCheck
    AssociateHealthCheck (AssociateHealthCheck'),
    newAssociateHealthCheck,
    AssociateHealthCheckResponse (AssociateHealthCheckResponse'),
    newAssociateHealthCheckResponse,

    -- ** DescribeProtectionGroup
    DescribeProtectionGroup (DescribeProtectionGroup'),
    newDescribeProtectionGroup,
    DescribeProtectionGroupResponse (DescribeProtectionGroupResponse'),
    newDescribeProtectionGroupResponse,

    -- * Types

    -- ** AttackLayer
    AttackLayer (..),

    -- ** AttackPropertyIdentifier
    AttackPropertyIdentifier (..),

    -- ** AutoRenew
    AutoRenew (..),

    -- ** ProactiveEngagementStatus
    ProactiveEngagementStatus (..),

    -- ** ProtectedResourceType
    ProtectedResourceType (..),

    -- ** ProtectionGroupAggregation
    ProtectionGroupAggregation (..),

    -- ** ProtectionGroupPattern
    ProtectionGroupPattern (..),

    -- ** SubResourceType
    SubResourceType (..),

    -- ** SubscriptionState
    SubscriptionState (..),

    -- ** Unit
    Unit (..),

    -- ** AttackDetail
    AttackDetail (AttackDetail'),
    newAttackDetail,

    -- ** AttackProperty
    AttackProperty (AttackProperty'),
    newAttackProperty,

    -- ** AttackStatisticsDataItem
    AttackStatisticsDataItem (AttackStatisticsDataItem'),
    newAttackStatisticsDataItem,

    -- ** AttackSummary
    AttackSummary (AttackSummary'),
    newAttackSummary,

    -- ** AttackVectorDescription
    AttackVectorDescription (AttackVectorDescription'),
    newAttackVectorDescription,

    -- ** AttackVolume
    AttackVolume (AttackVolume'),
    newAttackVolume,

    -- ** AttackVolumeStatistics
    AttackVolumeStatistics (AttackVolumeStatistics'),
    newAttackVolumeStatistics,

    -- ** Contributor
    Contributor (Contributor'),
    newContributor,

    -- ** EmergencyContact
    EmergencyContact (EmergencyContact'),
    newEmergencyContact,

    -- ** Limit
    Limit (Limit'),
    newLimit,

    -- ** Mitigation
    Mitigation (Mitigation'),
    newMitigation,

    -- ** Protection
    Protection (Protection'),
    newProtection,

    -- ** ProtectionGroup
    ProtectionGroup (ProtectionGroup'),
    newProtectionGroup,

    -- ** ProtectionGroupArbitraryPatternLimits
    ProtectionGroupArbitraryPatternLimits (ProtectionGroupArbitraryPatternLimits'),
    newProtectionGroupArbitraryPatternLimits,

    -- ** ProtectionGroupLimits
    ProtectionGroupLimits (ProtectionGroupLimits'),
    newProtectionGroupLimits,

    -- ** ProtectionGroupPatternTypeLimits
    ProtectionGroupPatternTypeLimits (ProtectionGroupPatternTypeLimits'),
    newProtectionGroupPatternTypeLimits,

    -- ** ProtectionLimits
    ProtectionLimits (ProtectionLimits'),
    newProtectionLimits,

    -- ** SubResourceSummary
    SubResourceSummary (SubResourceSummary'),
    newSubResourceSummary,

    -- ** Subscription
    Subscription (Subscription'),
    newSubscription,

    -- ** SubscriptionLimits
    SubscriptionLimits (SubscriptionLimits'),
    newSubscriptionLimits,

    -- ** SummarizedAttackVector
    SummarizedAttackVector (SummarizedAttackVector'),
    newSummarizedAttackVector,

    -- ** SummarizedCounter
    SummarizedCounter (SummarizedCounter'),
    newSummarizedCounter,

    -- ** Tag
    Tag (Tag'),
    newTag,

    -- ** TimeRange
    TimeRange (TimeRange'),
    newTimeRange,
  )
where

import Network.AWS.Shield.AssociateDRTLogBucket
import Network.AWS.Shield.AssociateDRTRole
import Network.AWS.Shield.AssociateHealthCheck
import Network.AWS.Shield.AssociateProactiveEngagementDetails
import Network.AWS.Shield.CreateProtection
import Network.AWS.Shield.CreateProtectionGroup
import Network.AWS.Shield.CreateSubscription
import Network.AWS.Shield.DeleteProtection
import Network.AWS.Shield.DeleteProtectionGroup
import Network.AWS.Shield.DescribeAttack
import Network.AWS.Shield.DescribeAttackStatistics
import Network.AWS.Shield.DescribeDRTAccess
import Network.AWS.Shield.DescribeEmergencyContactSettings
import Network.AWS.Shield.DescribeProtection
import Network.AWS.Shield.DescribeProtectionGroup
import Network.AWS.Shield.DescribeSubscription
import Network.AWS.Shield.DisableProactiveEngagement
import Network.AWS.Shield.DisassociateDRTLogBucket
import Network.AWS.Shield.DisassociateDRTRole
import Network.AWS.Shield.DisassociateHealthCheck
import Network.AWS.Shield.EnableProactiveEngagement
import Network.AWS.Shield.GetSubscriptionState
import Network.AWS.Shield.Lens
import Network.AWS.Shield.ListAttacks
import Network.AWS.Shield.ListProtectionGroups
import Network.AWS.Shield.ListProtections
import Network.AWS.Shield.ListResourcesInProtectionGroup
import Network.AWS.Shield.ListTagsForResource
import Network.AWS.Shield.TagResource
import Network.AWS.Shield.Types
import Network.AWS.Shield.UntagResource
import Network.AWS.Shield.UpdateEmergencyContactSettings
import Network.AWS.Shield.UpdateProtectionGroup
import Network.AWS.Shield.UpdateSubscription
import Network.AWS.Shield.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'Shield'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
