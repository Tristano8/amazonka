{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.CloudWatch.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudWatch.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _LimitExceededFault,
    _DashboardNotFoundError,
    _InvalidNextToken,
    _InternalServiceFault,
    _DashboardInvalidInputError,
    _InvalidParameterValueException,
    _ConcurrentModificationException,
    _InvalidFormatFault,
    _MissingRequiredParameterException,
    _ResourceNotFoundException,
    _InvalidParameterCombinationException,
    _LimitExceededException,
    _ResourceNotFound,

    -- * AlarmType
    AlarmType (..),

    -- * AnomalyDetectorStateValue
    AnomalyDetectorStateValue (..),

    -- * ComparisonOperator
    ComparisonOperator (..),

    -- * HistoryItemType
    HistoryItemType (..),

    -- * MetricStreamOutputFormat
    MetricStreamOutputFormat (..),

    -- * RecentlyActive
    RecentlyActive (..),

    -- * ScanBy
    ScanBy (..),

    -- * StandardUnit
    StandardUnit (..),

    -- * StateValue
    StateValue (..),

    -- * Statistic
    Statistic (..),

    -- * StatusCode
    StatusCode (..),

    -- * AlarmHistoryItem
    AlarmHistoryItem (..),
    newAlarmHistoryItem,
    alarmHistoryItem_alarmName,
    alarmHistoryItem_historyItemType,
    alarmHistoryItem_historyData,
    alarmHistoryItem_alarmType,
    alarmHistoryItem_historySummary,
    alarmHistoryItem_timestamp,

    -- * AnomalyDetector
    AnomalyDetector (..),
    newAnomalyDetector,
    anomalyDetector_metricName,
    anomalyDetector_namespace,
    anomalyDetector_stateValue,
    anomalyDetector_stat,
    anomalyDetector_configuration,
    anomalyDetector_dimensions,

    -- * AnomalyDetectorConfiguration
    AnomalyDetectorConfiguration (..),
    newAnomalyDetectorConfiguration,
    anomalyDetectorConfiguration_metricTimezone,
    anomalyDetectorConfiguration_excludedTimeRanges,

    -- * CompositeAlarm
    CompositeAlarm (..),
    newCompositeAlarm,
    compositeAlarm_alarmName,
    compositeAlarm_stateUpdatedTimestamp,
    compositeAlarm_alarmDescription,
    compositeAlarm_alarmRule,
    compositeAlarm_oKActions,
    compositeAlarm_stateValue,
    compositeAlarm_alarmConfigurationUpdatedTimestamp,
    compositeAlarm_actionsEnabled,
    compositeAlarm_insufficientDataActions,
    compositeAlarm_stateReason,
    compositeAlarm_stateReasonData,
    compositeAlarm_alarmArn,
    compositeAlarm_alarmActions,

    -- * DashboardEntry
    DashboardEntry (..),
    newDashboardEntry,
    dashboardEntry_size,
    dashboardEntry_dashboardName,
    dashboardEntry_lastModified,
    dashboardEntry_dashboardArn,

    -- * DashboardValidationMessage
    DashboardValidationMessage (..),
    newDashboardValidationMessage,
    dashboardValidationMessage_dataPath,
    dashboardValidationMessage_message,

    -- * Datapoint
    Datapoint (..),
    newDatapoint,
    datapoint_sampleCount,
    datapoint_maximum,
    datapoint_average,
    datapoint_minimum,
    datapoint_extendedStatistics,
    datapoint_sum,
    datapoint_unit,
    datapoint_timestamp,

    -- * Dimension
    Dimension (..),
    newDimension,
    dimension_name,
    dimension_value,

    -- * DimensionFilter
    DimensionFilter (..),
    newDimensionFilter,
    dimensionFilter_value,
    dimensionFilter_name,

    -- * InsightRule
    InsightRule (..),
    newInsightRule,
    insightRule_name,
    insightRule_state,
    insightRule_schema,
    insightRule_definition,

    -- * InsightRuleContributor
    InsightRuleContributor (..),
    newInsightRuleContributor,
    insightRuleContributor_keys,
    insightRuleContributor_approximateAggregateValue,
    insightRuleContributor_datapoints,

    -- * InsightRuleContributorDatapoint
    InsightRuleContributorDatapoint (..),
    newInsightRuleContributorDatapoint,
    insightRuleContributorDatapoint_timestamp,
    insightRuleContributorDatapoint_approximateValue,

    -- * InsightRuleMetricDatapoint
    InsightRuleMetricDatapoint (..),
    newInsightRuleMetricDatapoint,
    insightRuleMetricDatapoint_maxContributorValue,
    insightRuleMetricDatapoint_sampleCount,
    insightRuleMetricDatapoint_maximum,
    insightRuleMetricDatapoint_average,
    insightRuleMetricDatapoint_minimum,
    insightRuleMetricDatapoint_uniqueContributors,
    insightRuleMetricDatapoint_sum,
    insightRuleMetricDatapoint_timestamp,

    -- * LabelOptions
    LabelOptions (..),
    newLabelOptions,
    labelOptions_timezone,

    -- * MessageData
    MessageData (..),
    newMessageData,
    messageData_value,
    messageData_code,

    -- * Metric
    Metric (..),
    newMetric,
    metric_metricName,
    metric_namespace,
    metric_dimensions,

    -- * MetricAlarm
    MetricAlarm (..),
    newMetricAlarm,
    metricAlarm_alarmName,
    metricAlarm_stateUpdatedTimestamp,
    metricAlarm_metrics,
    metricAlarm_treatMissingData,
    metricAlarm_period,
    metricAlarm_alarmDescription,
    metricAlarm_evaluationPeriods,
    metricAlarm_metricName,
    metricAlarm_namespace,
    metricAlarm_thresholdMetricId,
    metricAlarm_comparisonOperator,
    metricAlarm_oKActions,
    metricAlarm_evaluateLowSampleCountPercentile,
    metricAlarm_stateValue,
    metricAlarm_datapointsToAlarm,
    metricAlarm_threshold,
    metricAlarm_alarmConfigurationUpdatedTimestamp,
    metricAlarm_actionsEnabled,
    metricAlarm_insufficientDataActions,
    metricAlarm_stateReason,
    metricAlarm_stateReasonData,
    metricAlarm_dimensions,
    metricAlarm_alarmArn,
    metricAlarm_alarmActions,
    metricAlarm_unit,
    metricAlarm_statistic,
    metricAlarm_extendedStatistic,

    -- * MetricDataQuery
    MetricDataQuery (..),
    newMetricDataQuery,
    metricDataQuery_returnData,
    metricDataQuery_period,
    metricDataQuery_accountId,
    metricDataQuery_expression,
    metricDataQuery_label,
    metricDataQuery_metricStat,
    metricDataQuery_id,

    -- * MetricDataResult
    MetricDataResult (..),
    newMetricDataResult,
    metricDataResult_values,
    metricDataResult_id,
    metricDataResult_timestamps,
    metricDataResult_messages,
    metricDataResult_label,
    metricDataResult_statusCode,

    -- * MetricDatum
    MetricDatum (..),
    newMetricDatum,
    metricDatum_values,
    metricDatum_counts,
    metricDatum_value,
    metricDatum_storageResolution,
    metricDatum_dimensions,
    metricDatum_unit,
    metricDatum_timestamp,
    metricDatum_statisticValues,
    metricDatum_metricName,

    -- * MetricStat
    MetricStat (..),
    newMetricStat,
    metricStat_unit,
    metricStat_metric,
    metricStat_period,
    metricStat_stat,

    -- * MetricStreamEntry
    MetricStreamEntry (..),
    newMetricStreamEntry,
    metricStreamEntry_state,
    metricStreamEntry_arn,
    metricStreamEntry_firehoseArn,
    metricStreamEntry_outputFormat,
    metricStreamEntry_lastUpdateDate,
    metricStreamEntry_name,
    metricStreamEntry_creationDate,

    -- * MetricStreamFilter
    MetricStreamFilter (..),
    newMetricStreamFilter,
    metricStreamFilter_namespace,

    -- * PartialFailure
    PartialFailure (..),
    newPartialFailure,
    partialFailure_failureResource,
    partialFailure_failureCode,
    partialFailure_failureDescription,
    partialFailure_exceptionType,

    -- * Range
    Range (..),
    newRange,
    range_startTime,
    range_endTime,

    -- * StatisticSet
    StatisticSet (..),
    newStatisticSet,
    statisticSet_sampleCount,
    statisticSet_sum,
    statisticSet_minimum,
    statisticSet_maximum,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,
  )
where

import Amazonka.CloudWatch.Types.AlarmHistoryItem
import Amazonka.CloudWatch.Types.AlarmType
import Amazonka.CloudWatch.Types.AnomalyDetector
import Amazonka.CloudWatch.Types.AnomalyDetectorConfiguration
import Amazonka.CloudWatch.Types.AnomalyDetectorStateValue
import Amazonka.CloudWatch.Types.ComparisonOperator
import Amazonka.CloudWatch.Types.CompositeAlarm
import Amazonka.CloudWatch.Types.DashboardEntry
import Amazonka.CloudWatch.Types.DashboardValidationMessage
import Amazonka.CloudWatch.Types.Datapoint
import Amazonka.CloudWatch.Types.Dimension
import Amazonka.CloudWatch.Types.DimensionFilter
import Amazonka.CloudWatch.Types.HistoryItemType
import Amazonka.CloudWatch.Types.InsightRule
import Amazonka.CloudWatch.Types.InsightRuleContributor
import Amazonka.CloudWatch.Types.InsightRuleContributorDatapoint
import Amazonka.CloudWatch.Types.InsightRuleMetricDatapoint
import Amazonka.CloudWatch.Types.LabelOptions
import Amazonka.CloudWatch.Types.MessageData
import Amazonka.CloudWatch.Types.Metric
import Amazonka.CloudWatch.Types.MetricAlarm
import Amazonka.CloudWatch.Types.MetricDataQuery
import Amazonka.CloudWatch.Types.MetricDataResult
import Amazonka.CloudWatch.Types.MetricDatum
import Amazonka.CloudWatch.Types.MetricStat
import Amazonka.CloudWatch.Types.MetricStreamEntry
import Amazonka.CloudWatch.Types.MetricStreamFilter
import Amazonka.CloudWatch.Types.MetricStreamOutputFormat
import Amazonka.CloudWatch.Types.PartialFailure
import Amazonka.CloudWatch.Types.Range
import Amazonka.CloudWatch.Types.RecentlyActive
import Amazonka.CloudWatch.Types.ScanBy
import Amazonka.CloudWatch.Types.StandardUnit
import Amazonka.CloudWatch.Types.StateValue
import Amazonka.CloudWatch.Types.Statistic
import Amazonka.CloudWatch.Types.StatisticSet
import Amazonka.CloudWatch.Types.StatusCode
import Amazonka.CloudWatch.Types.Tag
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2010-08-01@ of the Amazon CloudWatch SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "CloudWatch",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "monitoring",
      Core._serviceSigningName = "monitoring",
      Core._serviceVersion = "2010-08-01",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseXMLError "CloudWatch",
      Core._serviceRetry = retry
    }
  where
    retry =
      Core.Exponential
        { Core._retryBase = 5.0e-2,
          Core._retryGrowth = 2,
          Core._retryAttempts = 5,
          Core._retryCheck = check
        }
    check e
      | Lens.has
          ( Core.hasCode "ThrottledException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttled_exception"
      | Lens.has (Core.hasStatus 429) e =
        Prelude.Just "too_many_requests"
      | Lens.has
          ( Core.hasCode "ThrottlingException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttling_exception"
      | Lens.has
          ( Core.hasCode "Throttling"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttling"
      | Lens.has
          ( Core.hasCode
              "ProvisionedThroughputExceededException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throughput_exceeded"
      | Lens.has (Core.hasStatus 504) e =
        Prelude.Just "gateway_timeout"
      | Lens.has
          ( Core.hasCode "RequestThrottledException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "request_throttled_exception"
      | Lens.has (Core.hasStatus 502) e =
        Prelude.Just "bad_gateway"
      | Lens.has (Core.hasStatus 503) e =
        Prelude.Just "service_unavailable"
      | Lens.has (Core.hasStatus 500) e =
        Prelude.Just "general_server_error"
      | Lens.has (Core.hasStatus 509) e =
        Prelude.Just "limit_exceeded"
      | Prelude.otherwise = Prelude.Nothing

-- | The quota for alarms for this customer has already been reached.
_LimitExceededFault :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LimitExceededFault =
  Core._MatchServiceError
    defaultService
    "LimitExceeded"
    Prelude.. Core.hasStatus 400

-- | The specified dashboard does not exist.
_DashboardNotFoundError :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_DashboardNotFoundError =
  Core._MatchServiceError
    defaultService
    "ResourceNotFound"
    Prelude.. Core.hasStatus 404

-- | The next token specified is invalid.
_InvalidNextToken :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidNextToken =
  Core._MatchServiceError
    defaultService
    "InvalidNextToken"
    Prelude.. Core.hasStatus 400

-- | Request processing has failed due to some unknown error, exception, or
-- failure.
_InternalServiceFault :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServiceFault =
  Core._MatchServiceError
    defaultService
    "InternalServiceError"
    Prelude.. Core.hasStatus 500

-- | Some part of the dashboard data is invalid.
_DashboardInvalidInputError :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_DashboardInvalidInputError =
  Core._MatchServiceError
    defaultService
    "InvalidParameterInput"
    Prelude.. Core.hasStatus 400

-- | The value of an input parameter is bad or out-of-range.
_InvalidParameterValueException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidParameterValueException =
  Core._MatchServiceError
    defaultService
    "InvalidParameterValue"
    Prelude.. Core.hasStatus 400

-- | More than one process tried to modify a resource at the same time.
_ConcurrentModificationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConcurrentModificationException =
  Core._MatchServiceError
    defaultService
    "ConcurrentModificationException"
    Prelude.. Core.hasStatus 429

-- | Data was not syntactically valid JSON.
_InvalidFormatFault :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidFormatFault =
  Core._MatchServiceError
    defaultService
    "InvalidFormat"
    Prelude.. Core.hasStatus 400

-- | An input parameter that is required is missing.
_MissingRequiredParameterException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_MissingRequiredParameterException =
  Core._MatchServiceError
    defaultService
    "MissingParameter"
    Prelude.. Core.hasStatus 400

-- | The named resource does not exist.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 404

-- | Parameters were used together that cannot be used together.
_InvalidParameterCombinationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidParameterCombinationException =
  Core._MatchServiceError
    defaultService
    "InvalidParameterCombination"
    Prelude.. Core.hasStatus 400

-- | The operation exceeded one or more limits.
_LimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LimitExceededException =
  Core._MatchServiceError
    defaultService
    "LimitExceededException"
    Prelude.. Core.hasStatus 400

-- | The named resource does not exist.
_ResourceNotFound :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFound =
  Core._MatchServiceError
    defaultService
    "ResourceNotFound"
    Prelude.. Core.hasStatus 404
