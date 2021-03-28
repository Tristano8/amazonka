{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.TrainingJob
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SageMaker.Types.TrainingJob
  ( TrainingJob (..)
  -- * Smart constructor
  , mkTrainingJob
  -- * Lenses
  , tjAlgorithmSpecification
  , tjAutoMLJobArn
  , tjBillableTimeInSeconds
  , tjCheckpointConfig
  , tjCreationTime
  , tjDebugHookConfig
  , tjDebugRuleConfigurations
  , tjDebugRuleEvaluationStatuses
  , tjEnableInterContainerTrafficEncryption
  , tjEnableManagedSpotTraining
  , tjEnableNetworkIsolation
  , tjExperimentConfig
  , tjFailureReason
  , tjFinalMetricDataList
  , tjHyperParameters
  , tjInputDataConfig
  , tjLabelingJobArn
  , tjLastModifiedTime
  , tjModelArtifacts
  , tjOutputDataConfig
  , tjResourceConfig
  , tjRoleArn
  , tjSecondaryStatus
  , tjSecondaryStatusTransitions
  , tjStoppingCondition
  , tjTags
  , tjTensorBoardOutputConfig
  , tjTrainingEndTime
  , tjTrainingJobArn
  , tjTrainingJobName
  , tjTrainingJobStatus
  , tjTrainingStartTime
  , tjTrainingTimeInSeconds
  , tjTuningJobArn
  , tjVpcConfig
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.SageMaker.Types.AlgorithmSpecification as Types
import qualified Network.AWS.SageMaker.Types.AutoMLJobArn as Types
import qualified Network.AWS.SageMaker.Types.Channel as Types
import qualified Network.AWS.SageMaker.Types.CheckpointConfig as Types
import qualified Network.AWS.SageMaker.Types.DebugHookConfig as Types
import qualified Network.AWS.SageMaker.Types.DebugRuleConfiguration as Types
import qualified Network.AWS.SageMaker.Types.DebugRuleEvaluationStatus as Types
import qualified Network.AWS.SageMaker.Types.ExperimentConfig as Types
import qualified Network.AWS.SageMaker.Types.FailureReason as Types
import qualified Network.AWS.SageMaker.Types.HyperParameterKey as Types
import qualified Network.AWS.SageMaker.Types.HyperParameterValue as Types
import qualified Network.AWS.SageMaker.Types.LabelingJobArn as Types
import qualified Network.AWS.SageMaker.Types.MetricData as Types
import qualified Network.AWS.SageMaker.Types.ModelArtifacts as Types
import qualified Network.AWS.SageMaker.Types.OutputDataConfig as Types
import qualified Network.AWS.SageMaker.Types.ResourceConfig as Types
import qualified Network.AWS.SageMaker.Types.RoleArn as Types
import qualified Network.AWS.SageMaker.Types.SecondaryStatus as Types
import qualified Network.AWS.SageMaker.Types.SecondaryStatusTransition as Types
import qualified Network.AWS.SageMaker.Types.StoppingCondition as Types
import qualified Network.AWS.SageMaker.Types.Tag as Types
import qualified Network.AWS.SageMaker.Types.TensorBoardOutputConfig as Types
import qualified Network.AWS.SageMaker.Types.TrainingJobArn as Types
import qualified Network.AWS.SageMaker.Types.TrainingJobName as Types
import qualified Network.AWS.SageMaker.Types.TrainingJobStatus as Types
import qualified Network.AWS.SageMaker.Types.TuningJobArn as Types
import qualified Network.AWS.SageMaker.Types.VpcConfig as Types

-- | Contains information about a training job.
--
-- /See:/ 'mkTrainingJob' smart constructor.
data TrainingJob = TrainingJob'
  { algorithmSpecification :: Core.Maybe Types.AlgorithmSpecification
    -- ^ Information about the algorithm used for training, and algorithm metadata.
  , autoMLJobArn :: Core.Maybe Types.AutoMLJobArn
    -- ^ The Amazon Resource Name (ARN) of the job.
  , billableTimeInSeconds :: Core.Maybe Core.Natural
    -- ^ The billable time in seconds.
  , checkpointConfig :: Core.Maybe Types.CheckpointConfig
  , creationTime :: Core.Maybe Core.NominalDiffTime
    -- ^ A timestamp that indicates when the training job was created.
  , debugHookConfig :: Core.Maybe Types.DebugHookConfig
  , debugRuleConfigurations :: Core.Maybe [Types.DebugRuleConfiguration]
    -- ^ Information about the debug rule configuration.
  , debugRuleEvaluationStatuses :: Core.Maybe [Types.DebugRuleEvaluationStatus]
    -- ^ Information about the evaluation status of the rules for the training job.
  , enableInterContainerTrafficEncryption :: Core.Maybe Core.Bool
    -- ^ To encrypt all communications between ML compute instances in distributed training, choose @True@ . Encryption provides greater security for distributed training, but training might take longer. How long it takes depends on the amount of communication between compute instances, especially if you use a deep learning algorithm in distributed training.
  , enableManagedSpotTraining :: Core.Maybe Core.Bool
    -- ^ When true, enables managed spot training using Amazon EC2 Spot instances to run training jobs instead of on-demand instances. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/model-managed-spot-training.html Managed Spot Training> .
  , enableNetworkIsolation :: Core.Maybe Core.Bool
    -- ^ If the @TrainingJob@ was created with network isolation, the value is set to @true@ . If network isolation is enabled, nodes can't communicate beyond the VPC they run in.
  , experimentConfig :: Core.Maybe Types.ExperimentConfig
  , failureReason :: Core.Maybe Types.FailureReason
    -- ^ If the training job failed, the reason it failed.
  , finalMetricDataList :: Core.Maybe [Types.MetricData]
    -- ^ A list of final metric values that are set when the training job completes. Used only if the training job was configured to use metrics.
  , hyperParameters :: Core.Maybe (Core.HashMap Types.HyperParameterKey Types.HyperParameterValue)
    -- ^ Algorithm-specific parameters.
  , inputDataConfig :: Core.Maybe (Core.NonEmpty Types.Channel)
    -- ^ An array of @Channel@ objects that describes each data input channel.
  , labelingJobArn :: Core.Maybe Types.LabelingJobArn
    -- ^ The Amazon Resource Name (ARN) of the labeling job.
  , lastModifiedTime :: Core.Maybe Core.NominalDiffTime
    -- ^ A timestamp that indicates when the status of the training job was last modified.
  , modelArtifacts :: Core.Maybe Types.ModelArtifacts
    -- ^ Information about the Amazon S3 location that is configured for storing model artifacts.
  , outputDataConfig :: Core.Maybe Types.OutputDataConfig
    -- ^ The S3 path where model artifacts that you configured when creating the job are stored. Amazon SageMaker creates subfolders for model artifacts.
  , resourceConfig :: Core.Maybe Types.ResourceConfig
    -- ^ Resources, including ML compute instances and ML storage volumes, that are configured for model training.
  , roleArn :: Core.Maybe Types.RoleArn
    -- ^ The AWS Identity and Access Management (IAM) role configured for the training job.
  , secondaryStatus :: Core.Maybe Types.SecondaryStatus
    -- ^ Provides detailed information about the state of the training job. For detailed information about the secondary status of the training job, see @StatusMessage@ under 'SecondaryStatusTransition' .
--
-- Amazon SageMaker provides primary statuses and secondary statuses that apply to each of them:
--
--     * InProgress
--
--     * 
--     * @Starting@ - Starting the training job.
--
--
--     * @Downloading@ - An optional stage for algorithms that support @File@ training input mode. It indicates that data is being downloaded to the ML storage volumes.
--
--
--     * @Training@ - Training is in progress.
--
--
--     * @Uploading@ - Training is complete and the model artifacts are being uploaded to the S3 location.
--
--
--
--
--     * Completed
--
--     * 
--     * @Completed@ - The training job has completed.
--
--
--
--
--     * Failed
--
--     * 
--     * @Failed@ - The training job has failed. The reason for the failure is returned in the @FailureReason@ field of @DescribeTrainingJobResponse@ .
--
--
--
--
--     * Stopped
--
--     * 
--     * @MaxRuntimeExceeded@ - The job stopped because it exceeded the maximum allowed runtime.
--
--
--     * @Stopped@ - The training job has stopped.
--
--
--
--
--     * Stopping
--
--     * 
--     * @Stopping@ - Stopping the training job.
--
--
--
--
-- /Important:/ Valid values for @SecondaryStatus@ are subject to change. 
-- We no longer support the following secondary statuses:
--
--     * @LaunchingMLInstances@ 
--
--
--     * @PreparingTrainingStack@ 
--
--
--     * @DownloadingTrainingImage@ 
--
--
  , secondaryStatusTransitions :: Core.Maybe [Types.SecondaryStatusTransition]
    -- ^ A history of all of the secondary statuses that the training job has transitioned through.
  , stoppingCondition :: Core.Maybe Types.StoppingCondition
    -- ^ Specifies a limit to how long a model training job can run. When the job reaches the time limit, Amazon SageMaker ends the training job. Use this API to cap model training costs.
--
-- To stop a job, Amazon SageMaker sends the algorithm the @SIGTERM@ signal, which delays job termination for 120 seconds. Algorithms can use this 120-second window to save the model artifacts, so the results of training are not lost. 
  , tags :: Core.Maybe [Types.Tag]
    -- ^ An array of key-value pairs. For more information, see <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what Using Cost Allocation Tags> in the /AWS Billing and Cost Management User Guide/ .
  , tensorBoardOutputConfig :: Core.Maybe Types.TensorBoardOutputConfig
  , trainingEndTime :: Core.Maybe Core.NominalDiffTime
    -- ^ Indicates the time when the training job ends on training instances. You are billed for the time interval between the value of @TrainingStartTime@ and this time. For successful jobs and stopped jobs, this is the time after model artifacts are uploaded. For failed jobs, this is the time when Amazon SageMaker detects a job failure.
  , trainingJobArn :: Core.Maybe Types.TrainingJobArn
    -- ^ The Amazon Resource Name (ARN) of the training job.
  , trainingJobName :: Core.Maybe Types.TrainingJobName
    -- ^ The name of the training job.
  , trainingJobStatus :: Core.Maybe Types.TrainingJobStatus
    -- ^ The status of the training job.
--
-- Training job statuses are:
--
--     * @InProgress@ - The training is in progress.
--
--
--     * @Completed@ - The training job has completed.
--
--
--     * @Failed@ - The training job has failed. To see the reason for the failure, see the @FailureReason@ field in the response to a @DescribeTrainingJobResponse@ call.
--
--
--     * @Stopping@ - The training job is stopping.
--
--
--     * @Stopped@ - The training job has stopped.
--
--
-- For more detailed information, see @SecondaryStatus@ . 
  , trainingStartTime :: Core.Maybe Core.NominalDiffTime
    -- ^ Indicates the time when the training job starts on training instances. You are billed for the time interval between this time and the value of @TrainingEndTime@ . The start time in CloudWatch Logs might be later than this time. The difference is due to the time it takes to download the training data and to the size of the training container.
  , trainingTimeInSeconds :: Core.Maybe Core.Natural
    -- ^ The training time in seconds.
  , tuningJobArn :: Core.Maybe Types.TuningJobArn
    -- ^ The Amazon Resource Name (ARN) of the associated hyperparameter tuning job if the training job was launched by a hyperparameter tuning job.
  , vpcConfig :: Core.Maybe Types.VpcConfig
    -- ^ A 'VpcConfig' object that specifies the VPC that this training job has access to. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html Protect Training Jobs by Using an Amazon Virtual Private Cloud> .
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'TrainingJob' value with any optional fields omitted.
mkTrainingJob
    :: TrainingJob
mkTrainingJob
  = TrainingJob'{algorithmSpecification = Core.Nothing,
                 autoMLJobArn = Core.Nothing, billableTimeInSeconds = Core.Nothing,
                 checkpointConfig = Core.Nothing, creationTime = Core.Nothing,
                 debugHookConfig = Core.Nothing,
                 debugRuleConfigurations = Core.Nothing,
                 debugRuleEvaluationStatuses = Core.Nothing,
                 enableInterContainerTrafficEncryption = Core.Nothing,
                 enableManagedSpotTraining = Core.Nothing,
                 enableNetworkIsolation = Core.Nothing,
                 experimentConfig = Core.Nothing, failureReason = Core.Nothing,
                 finalMetricDataList = Core.Nothing, hyperParameters = Core.Nothing,
                 inputDataConfig = Core.Nothing, labelingJobArn = Core.Nothing,
                 lastModifiedTime = Core.Nothing, modelArtifacts = Core.Nothing,
                 outputDataConfig = Core.Nothing, resourceConfig = Core.Nothing,
                 roleArn = Core.Nothing, secondaryStatus = Core.Nothing,
                 secondaryStatusTransitions = Core.Nothing,
                 stoppingCondition = Core.Nothing, tags = Core.Nothing,
                 tensorBoardOutputConfig = Core.Nothing,
                 trainingEndTime = Core.Nothing, trainingJobArn = Core.Nothing,
                 trainingJobName = Core.Nothing, trainingJobStatus = Core.Nothing,
                 trainingStartTime = Core.Nothing,
                 trainingTimeInSeconds = Core.Nothing, tuningJobArn = Core.Nothing,
                 vpcConfig = Core.Nothing}

-- | Information about the algorithm used for training, and algorithm metadata.
--
-- /Note:/ Consider using 'algorithmSpecification' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjAlgorithmSpecification :: Lens.Lens' TrainingJob (Core.Maybe Types.AlgorithmSpecification)
tjAlgorithmSpecification = Lens.field @"algorithmSpecification"
{-# INLINEABLE tjAlgorithmSpecification #-}
{-# DEPRECATED algorithmSpecification "Use generic-lens or generic-optics with 'algorithmSpecification' instead"  #-}

-- | The Amazon Resource Name (ARN) of the job.
--
-- /Note:/ Consider using 'autoMLJobArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjAutoMLJobArn :: Lens.Lens' TrainingJob (Core.Maybe Types.AutoMLJobArn)
tjAutoMLJobArn = Lens.field @"autoMLJobArn"
{-# INLINEABLE tjAutoMLJobArn #-}
{-# DEPRECATED autoMLJobArn "Use generic-lens or generic-optics with 'autoMLJobArn' instead"  #-}

-- | The billable time in seconds.
--
-- /Note:/ Consider using 'billableTimeInSeconds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjBillableTimeInSeconds :: Lens.Lens' TrainingJob (Core.Maybe Core.Natural)
tjBillableTimeInSeconds = Lens.field @"billableTimeInSeconds"
{-# INLINEABLE tjBillableTimeInSeconds #-}
{-# DEPRECATED billableTimeInSeconds "Use generic-lens or generic-optics with 'billableTimeInSeconds' instead"  #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'checkpointConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjCheckpointConfig :: Lens.Lens' TrainingJob (Core.Maybe Types.CheckpointConfig)
tjCheckpointConfig = Lens.field @"checkpointConfig"
{-# INLINEABLE tjCheckpointConfig #-}
{-# DEPRECATED checkpointConfig "Use generic-lens or generic-optics with 'checkpointConfig' instead"  #-}

-- | A timestamp that indicates when the training job was created.
--
-- /Note:/ Consider using 'creationTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjCreationTime :: Lens.Lens' TrainingJob (Core.Maybe Core.NominalDiffTime)
tjCreationTime = Lens.field @"creationTime"
{-# INLINEABLE tjCreationTime #-}
{-# DEPRECATED creationTime "Use generic-lens or generic-optics with 'creationTime' instead"  #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'debugHookConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjDebugHookConfig :: Lens.Lens' TrainingJob (Core.Maybe Types.DebugHookConfig)
tjDebugHookConfig = Lens.field @"debugHookConfig"
{-# INLINEABLE tjDebugHookConfig #-}
{-# DEPRECATED debugHookConfig "Use generic-lens or generic-optics with 'debugHookConfig' instead"  #-}

-- | Information about the debug rule configuration.
--
-- /Note:/ Consider using 'debugRuleConfigurations' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjDebugRuleConfigurations :: Lens.Lens' TrainingJob (Core.Maybe [Types.DebugRuleConfiguration])
tjDebugRuleConfigurations = Lens.field @"debugRuleConfigurations"
{-# INLINEABLE tjDebugRuleConfigurations #-}
{-# DEPRECATED debugRuleConfigurations "Use generic-lens or generic-optics with 'debugRuleConfigurations' instead"  #-}

-- | Information about the evaluation status of the rules for the training job.
--
-- /Note:/ Consider using 'debugRuleEvaluationStatuses' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjDebugRuleEvaluationStatuses :: Lens.Lens' TrainingJob (Core.Maybe [Types.DebugRuleEvaluationStatus])
tjDebugRuleEvaluationStatuses = Lens.field @"debugRuleEvaluationStatuses"
{-# INLINEABLE tjDebugRuleEvaluationStatuses #-}
{-# DEPRECATED debugRuleEvaluationStatuses "Use generic-lens or generic-optics with 'debugRuleEvaluationStatuses' instead"  #-}

-- | To encrypt all communications between ML compute instances in distributed training, choose @True@ . Encryption provides greater security for distributed training, but training might take longer. How long it takes depends on the amount of communication between compute instances, especially if you use a deep learning algorithm in distributed training.
--
-- /Note:/ Consider using 'enableInterContainerTrafficEncryption' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjEnableInterContainerTrafficEncryption :: Lens.Lens' TrainingJob (Core.Maybe Core.Bool)
tjEnableInterContainerTrafficEncryption = Lens.field @"enableInterContainerTrafficEncryption"
{-# INLINEABLE tjEnableInterContainerTrafficEncryption #-}
{-# DEPRECATED enableInterContainerTrafficEncryption "Use generic-lens or generic-optics with 'enableInterContainerTrafficEncryption' instead"  #-}

-- | When true, enables managed spot training using Amazon EC2 Spot instances to run training jobs instead of on-demand instances. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/model-managed-spot-training.html Managed Spot Training> .
--
-- /Note:/ Consider using 'enableManagedSpotTraining' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjEnableManagedSpotTraining :: Lens.Lens' TrainingJob (Core.Maybe Core.Bool)
tjEnableManagedSpotTraining = Lens.field @"enableManagedSpotTraining"
{-# INLINEABLE tjEnableManagedSpotTraining #-}
{-# DEPRECATED enableManagedSpotTraining "Use generic-lens or generic-optics with 'enableManagedSpotTraining' instead"  #-}

-- | If the @TrainingJob@ was created with network isolation, the value is set to @true@ . If network isolation is enabled, nodes can't communicate beyond the VPC they run in.
--
-- /Note:/ Consider using 'enableNetworkIsolation' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjEnableNetworkIsolation :: Lens.Lens' TrainingJob (Core.Maybe Core.Bool)
tjEnableNetworkIsolation = Lens.field @"enableNetworkIsolation"
{-# INLINEABLE tjEnableNetworkIsolation #-}
{-# DEPRECATED enableNetworkIsolation "Use generic-lens or generic-optics with 'enableNetworkIsolation' instead"  #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'experimentConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjExperimentConfig :: Lens.Lens' TrainingJob (Core.Maybe Types.ExperimentConfig)
tjExperimentConfig = Lens.field @"experimentConfig"
{-# INLINEABLE tjExperimentConfig #-}
{-# DEPRECATED experimentConfig "Use generic-lens or generic-optics with 'experimentConfig' instead"  #-}

-- | If the training job failed, the reason it failed.
--
-- /Note:/ Consider using 'failureReason' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjFailureReason :: Lens.Lens' TrainingJob (Core.Maybe Types.FailureReason)
tjFailureReason = Lens.field @"failureReason"
{-# INLINEABLE tjFailureReason #-}
{-# DEPRECATED failureReason "Use generic-lens or generic-optics with 'failureReason' instead"  #-}

-- | A list of final metric values that are set when the training job completes. Used only if the training job was configured to use metrics.
--
-- /Note:/ Consider using 'finalMetricDataList' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjFinalMetricDataList :: Lens.Lens' TrainingJob (Core.Maybe [Types.MetricData])
tjFinalMetricDataList = Lens.field @"finalMetricDataList"
{-# INLINEABLE tjFinalMetricDataList #-}
{-# DEPRECATED finalMetricDataList "Use generic-lens or generic-optics with 'finalMetricDataList' instead"  #-}

-- | Algorithm-specific parameters.
--
-- /Note:/ Consider using 'hyperParameters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjHyperParameters :: Lens.Lens' TrainingJob (Core.Maybe (Core.HashMap Types.HyperParameterKey Types.HyperParameterValue))
tjHyperParameters = Lens.field @"hyperParameters"
{-# INLINEABLE tjHyperParameters #-}
{-# DEPRECATED hyperParameters "Use generic-lens or generic-optics with 'hyperParameters' instead"  #-}

-- | An array of @Channel@ objects that describes each data input channel.
--
-- /Note:/ Consider using 'inputDataConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjInputDataConfig :: Lens.Lens' TrainingJob (Core.Maybe (Core.NonEmpty Types.Channel))
tjInputDataConfig = Lens.field @"inputDataConfig"
{-# INLINEABLE tjInputDataConfig #-}
{-# DEPRECATED inputDataConfig "Use generic-lens or generic-optics with 'inputDataConfig' instead"  #-}

-- | The Amazon Resource Name (ARN) of the labeling job.
--
-- /Note:/ Consider using 'labelingJobArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjLabelingJobArn :: Lens.Lens' TrainingJob (Core.Maybe Types.LabelingJobArn)
tjLabelingJobArn = Lens.field @"labelingJobArn"
{-# INLINEABLE tjLabelingJobArn #-}
{-# DEPRECATED labelingJobArn "Use generic-lens or generic-optics with 'labelingJobArn' instead"  #-}

-- | A timestamp that indicates when the status of the training job was last modified.
--
-- /Note:/ Consider using 'lastModifiedTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjLastModifiedTime :: Lens.Lens' TrainingJob (Core.Maybe Core.NominalDiffTime)
tjLastModifiedTime = Lens.field @"lastModifiedTime"
{-# INLINEABLE tjLastModifiedTime #-}
{-# DEPRECATED lastModifiedTime "Use generic-lens or generic-optics with 'lastModifiedTime' instead"  #-}

-- | Information about the Amazon S3 location that is configured for storing model artifacts.
--
-- /Note:/ Consider using 'modelArtifacts' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjModelArtifacts :: Lens.Lens' TrainingJob (Core.Maybe Types.ModelArtifacts)
tjModelArtifacts = Lens.field @"modelArtifacts"
{-# INLINEABLE tjModelArtifacts #-}
{-# DEPRECATED modelArtifacts "Use generic-lens or generic-optics with 'modelArtifacts' instead"  #-}

-- | The S3 path where model artifacts that you configured when creating the job are stored. Amazon SageMaker creates subfolders for model artifacts.
--
-- /Note:/ Consider using 'outputDataConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjOutputDataConfig :: Lens.Lens' TrainingJob (Core.Maybe Types.OutputDataConfig)
tjOutputDataConfig = Lens.field @"outputDataConfig"
{-# INLINEABLE tjOutputDataConfig #-}
{-# DEPRECATED outputDataConfig "Use generic-lens or generic-optics with 'outputDataConfig' instead"  #-}

-- | Resources, including ML compute instances and ML storage volumes, that are configured for model training.
--
-- /Note:/ Consider using 'resourceConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjResourceConfig :: Lens.Lens' TrainingJob (Core.Maybe Types.ResourceConfig)
tjResourceConfig = Lens.field @"resourceConfig"
{-# INLINEABLE tjResourceConfig #-}
{-# DEPRECATED resourceConfig "Use generic-lens or generic-optics with 'resourceConfig' instead"  #-}

-- | The AWS Identity and Access Management (IAM) role configured for the training job.
--
-- /Note:/ Consider using 'roleArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjRoleArn :: Lens.Lens' TrainingJob (Core.Maybe Types.RoleArn)
tjRoleArn = Lens.field @"roleArn"
{-# INLINEABLE tjRoleArn #-}
{-# DEPRECATED roleArn "Use generic-lens or generic-optics with 'roleArn' instead"  #-}

-- | Provides detailed information about the state of the training job. For detailed information about the secondary status of the training job, see @StatusMessage@ under 'SecondaryStatusTransition' .
--
-- Amazon SageMaker provides primary statuses and secondary statuses that apply to each of them:
--
--     * InProgress
--
--     * 
--     * @Starting@ - Starting the training job.
--
--
--     * @Downloading@ - An optional stage for algorithms that support @File@ training input mode. It indicates that data is being downloaded to the ML storage volumes.
--
--
--     * @Training@ - Training is in progress.
--
--
--     * @Uploading@ - Training is complete and the model artifacts are being uploaded to the S3 location.
--
--
--
--
--     * Completed
--
--     * 
--     * @Completed@ - The training job has completed.
--
--
--
--
--     * Failed
--
--     * 
--     * @Failed@ - The training job has failed. The reason for the failure is returned in the @FailureReason@ field of @DescribeTrainingJobResponse@ .
--
--
--
--
--     * Stopped
--
--     * 
--     * @MaxRuntimeExceeded@ - The job stopped because it exceeded the maximum allowed runtime.
--
--
--     * @Stopped@ - The training job has stopped.
--
--
--
--
--     * Stopping
--
--     * 
--     * @Stopping@ - Stopping the training job.
--
--
--
--
-- /Important:/ Valid values for @SecondaryStatus@ are subject to change. 
-- We no longer support the following secondary statuses:
--
--     * @LaunchingMLInstances@ 
--
--
--     * @PreparingTrainingStack@ 
--
--
--     * @DownloadingTrainingImage@ 
--
--
--
-- /Note:/ Consider using 'secondaryStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjSecondaryStatus :: Lens.Lens' TrainingJob (Core.Maybe Types.SecondaryStatus)
tjSecondaryStatus = Lens.field @"secondaryStatus"
{-# INLINEABLE tjSecondaryStatus #-}
{-# DEPRECATED secondaryStatus "Use generic-lens or generic-optics with 'secondaryStatus' instead"  #-}

-- | A history of all of the secondary statuses that the training job has transitioned through.
--
-- /Note:/ Consider using 'secondaryStatusTransitions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjSecondaryStatusTransitions :: Lens.Lens' TrainingJob (Core.Maybe [Types.SecondaryStatusTransition])
tjSecondaryStatusTransitions = Lens.field @"secondaryStatusTransitions"
{-# INLINEABLE tjSecondaryStatusTransitions #-}
{-# DEPRECATED secondaryStatusTransitions "Use generic-lens or generic-optics with 'secondaryStatusTransitions' instead"  #-}

-- | Specifies a limit to how long a model training job can run. When the job reaches the time limit, Amazon SageMaker ends the training job. Use this API to cap model training costs.
--
-- To stop a job, Amazon SageMaker sends the algorithm the @SIGTERM@ signal, which delays job termination for 120 seconds. Algorithms can use this 120-second window to save the model artifacts, so the results of training are not lost. 
--
-- /Note:/ Consider using 'stoppingCondition' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjStoppingCondition :: Lens.Lens' TrainingJob (Core.Maybe Types.StoppingCondition)
tjStoppingCondition = Lens.field @"stoppingCondition"
{-# INLINEABLE tjStoppingCondition #-}
{-# DEPRECATED stoppingCondition "Use generic-lens or generic-optics with 'stoppingCondition' instead"  #-}

-- | An array of key-value pairs. For more information, see <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what Using Cost Allocation Tags> in the /AWS Billing and Cost Management User Guide/ .
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjTags :: Lens.Lens' TrainingJob (Core.Maybe [Types.Tag])
tjTags = Lens.field @"tags"
{-# INLINEABLE tjTags #-}
{-# DEPRECATED tags "Use generic-lens or generic-optics with 'tags' instead"  #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'tensorBoardOutputConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjTensorBoardOutputConfig :: Lens.Lens' TrainingJob (Core.Maybe Types.TensorBoardOutputConfig)
tjTensorBoardOutputConfig = Lens.field @"tensorBoardOutputConfig"
{-# INLINEABLE tjTensorBoardOutputConfig #-}
{-# DEPRECATED tensorBoardOutputConfig "Use generic-lens or generic-optics with 'tensorBoardOutputConfig' instead"  #-}

-- | Indicates the time when the training job ends on training instances. You are billed for the time interval between the value of @TrainingStartTime@ and this time. For successful jobs and stopped jobs, this is the time after model artifacts are uploaded. For failed jobs, this is the time when Amazon SageMaker detects a job failure.
--
-- /Note:/ Consider using 'trainingEndTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjTrainingEndTime :: Lens.Lens' TrainingJob (Core.Maybe Core.NominalDiffTime)
tjTrainingEndTime = Lens.field @"trainingEndTime"
{-# INLINEABLE tjTrainingEndTime #-}
{-# DEPRECATED trainingEndTime "Use generic-lens or generic-optics with 'trainingEndTime' instead"  #-}

-- | The Amazon Resource Name (ARN) of the training job.
--
-- /Note:/ Consider using 'trainingJobArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjTrainingJobArn :: Lens.Lens' TrainingJob (Core.Maybe Types.TrainingJobArn)
tjTrainingJobArn = Lens.field @"trainingJobArn"
{-# INLINEABLE tjTrainingJobArn #-}
{-# DEPRECATED trainingJobArn "Use generic-lens or generic-optics with 'trainingJobArn' instead"  #-}

-- | The name of the training job.
--
-- /Note:/ Consider using 'trainingJobName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjTrainingJobName :: Lens.Lens' TrainingJob (Core.Maybe Types.TrainingJobName)
tjTrainingJobName = Lens.field @"trainingJobName"
{-# INLINEABLE tjTrainingJobName #-}
{-# DEPRECATED trainingJobName "Use generic-lens or generic-optics with 'trainingJobName' instead"  #-}

-- | The status of the training job.
--
-- Training job statuses are:
--
--     * @InProgress@ - The training is in progress.
--
--
--     * @Completed@ - The training job has completed.
--
--
--     * @Failed@ - The training job has failed. To see the reason for the failure, see the @FailureReason@ field in the response to a @DescribeTrainingJobResponse@ call.
--
--
--     * @Stopping@ - The training job is stopping.
--
--
--     * @Stopped@ - The training job has stopped.
--
--
-- For more detailed information, see @SecondaryStatus@ . 
--
-- /Note:/ Consider using 'trainingJobStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjTrainingJobStatus :: Lens.Lens' TrainingJob (Core.Maybe Types.TrainingJobStatus)
tjTrainingJobStatus = Lens.field @"trainingJobStatus"
{-# INLINEABLE tjTrainingJobStatus #-}
{-# DEPRECATED trainingJobStatus "Use generic-lens or generic-optics with 'trainingJobStatus' instead"  #-}

-- | Indicates the time when the training job starts on training instances. You are billed for the time interval between this time and the value of @TrainingEndTime@ . The start time in CloudWatch Logs might be later than this time. The difference is due to the time it takes to download the training data and to the size of the training container.
--
-- /Note:/ Consider using 'trainingStartTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjTrainingStartTime :: Lens.Lens' TrainingJob (Core.Maybe Core.NominalDiffTime)
tjTrainingStartTime = Lens.field @"trainingStartTime"
{-# INLINEABLE tjTrainingStartTime #-}
{-# DEPRECATED trainingStartTime "Use generic-lens or generic-optics with 'trainingStartTime' instead"  #-}

-- | The training time in seconds.
--
-- /Note:/ Consider using 'trainingTimeInSeconds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjTrainingTimeInSeconds :: Lens.Lens' TrainingJob (Core.Maybe Core.Natural)
tjTrainingTimeInSeconds = Lens.field @"trainingTimeInSeconds"
{-# INLINEABLE tjTrainingTimeInSeconds #-}
{-# DEPRECATED trainingTimeInSeconds "Use generic-lens or generic-optics with 'trainingTimeInSeconds' instead"  #-}

-- | The Amazon Resource Name (ARN) of the associated hyperparameter tuning job if the training job was launched by a hyperparameter tuning job.
--
-- /Note:/ Consider using 'tuningJobArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjTuningJobArn :: Lens.Lens' TrainingJob (Core.Maybe Types.TuningJobArn)
tjTuningJobArn = Lens.field @"tuningJobArn"
{-# INLINEABLE tjTuningJobArn #-}
{-# DEPRECATED tuningJobArn "Use generic-lens or generic-optics with 'tuningJobArn' instead"  #-}

-- | A 'VpcConfig' object that specifies the VPC that this training job has access to. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html Protect Training Jobs by Using an Amazon Virtual Private Cloud> .
--
-- /Note:/ Consider using 'vpcConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tjVpcConfig :: Lens.Lens' TrainingJob (Core.Maybe Types.VpcConfig)
tjVpcConfig = Lens.field @"vpcConfig"
{-# INLINEABLE tjVpcConfig #-}
{-# DEPRECATED vpcConfig "Use generic-lens or generic-optics with 'vpcConfig' instead"  #-}

instance Core.FromJSON TrainingJob where
        parseJSON
          = Core.withObject "TrainingJob" Core.$
              \ x ->
                TrainingJob' Core.<$>
                  (x Core..:? "AlgorithmSpecification") Core.<*>
                    x Core..:? "AutoMLJobArn"
                    Core.<*> x Core..:? "BillableTimeInSeconds"
                    Core.<*> x Core..:? "CheckpointConfig"
                    Core.<*> x Core..:? "CreationTime"
                    Core.<*> x Core..:? "DebugHookConfig"
                    Core.<*> x Core..:? "DebugRuleConfigurations"
                    Core.<*> x Core..:? "DebugRuleEvaluationStatuses"
                    Core.<*> x Core..:? "EnableInterContainerTrafficEncryption"
                    Core.<*> x Core..:? "EnableManagedSpotTraining"
                    Core.<*> x Core..:? "EnableNetworkIsolation"
                    Core.<*> x Core..:? "ExperimentConfig"
                    Core.<*> x Core..:? "FailureReason"
                    Core.<*> x Core..:? "FinalMetricDataList"
                    Core.<*> x Core..:? "HyperParameters"
                    Core.<*> x Core..:? "InputDataConfig"
                    Core.<*> x Core..:? "LabelingJobArn"
                    Core.<*> x Core..:? "LastModifiedTime"
                    Core.<*> x Core..:? "ModelArtifacts"
                    Core.<*> x Core..:? "OutputDataConfig"
                    Core.<*> x Core..:? "ResourceConfig"
                    Core.<*> x Core..:? "RoleArn"
                    Core.<*> x Core..:? "SecondaryStatus"
                    Core.<*> x Core..:? "SecondaryStatusTransitions"
                    Core.<*> x Core..:? "StoppingCondition"
                    Core.<*> x Core..:? "Tags"
                    Core.<*> x Core..:? "TensorBoardOutputConfig"
                    Core.<*> x Core..:? "TrainingEndTime"
                    Core.<*> x Core..:? "TrainingJobArn"
                    Core.<*> x Core..:? "TrainingJobName"
                    Core.<*> x Core..:? "TrainingJobStatus"
                    Core.<*> x Core..:? "TrainingStartTime"
                    Core.<*> x Core..:? "TrainingTimeInSeconds"
                    Core.<*> x Core..:? "TuningJobArn"
                    Core.<*> x Core..:? "VpcConfig"
