{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Translate.Types.TextTranslationJobProperties
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Translate.Types.TextTranslationJobProperties
  ( TextTranslationJobProperties (..)
  -- * Smart constructor
  , mkTextTranslationJobProperties
  -- * Lenses
  , ttjpDataAccessRoleArn
  , ttjpEndTime
  , ttjpInputDataConfig
  , ttjpJobDetails
  , ttjpJobId
  , ttjpJobName
  , ttjpJobStatus
  , ttjpMessage
  , ttjpOutputDataConfig
  , ttjpParallelDataNames
  , ttjpSourceLanguageCode
  , ttjpSubmittedTime
  , ttjpTargetLanguageCodes
  , ttjpTerminologyNames
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Translate.Types.IamRoleArn as Types
import qualified Network.AWS.Translate.Types.InputDataConfig as Types
import qualified Network.AWS.Translate.Types.JobDetails as Types
import qualified Network.AWS.Translate.Types.JobId as Types
import qualified Network.AWS.Translate.Types.JobName as Types
import qualified Network.AWS.Translate.Types.JobStatus as Types
import qualified Network.AWS.Translate.Types.LanguageCodeString as Types
import qualified Network.AWS.Translate.Types.Message as Types
import qualified Network.AWS.Translate.Types.OutputDataConfig as Types
import qualified Network.AWS.Translate.Types.ResourceName as Types

-- | Provides information about a translation job.
--
-- /See:/ 'mkTextTranslationJobProperties' smart constructor.
data TextTranslationJobProperties = TextTranslationJobProperties'
  { dataAccessRoleArn :: Core.Maybe Types.IamRoleArn
    -- ^ The Amazon Resource Name (ARN) of an AWS Identity Access and Management (IAM) role that granted Amazon Translate read access to the job's input data.
  , endTime :: Core.Maybe Core.NominalDiffTime
    -- ^ The time at which the translation job ended.
  , inputDataConfig :: Core.Maybe Types.InputDataConfig
    -- ^ The input configuration properties that were specified when the job was requested.
  , jobDetails :: Core.Maybe Types.JobDetails
    -- ^ The number of documents successfully and unsuccessfully processed during the translation job.
  , jobId :: Core.Maybe Types.JobId
    -- ^ The ID of the translation job.
  , jobName :: Core.Maybe Types.JobName
    -- ^ The user-defined name of the translation job.
  , jobStatus :: Core.Maybe Types.JobStatus
    -- ^ The status of the translation job.
  , message :: Core.Maybe Types.Message
    -- ^ An explanation of any errors that may have occured during the translation job.
  , outputDataConfig :: Core.Maybe Types.OutputDataConfig
    -- ^ The output configuration properties that were specified when the job was requested.
  , parallelDataNames :: Core.Maybe [Types.ResourceName]
    -- ^ A list containing the names of the parallel data resources applied to the translation job.
  , sourceLanguageCode :: Core.Maybe Types.LanguageCodeString
    -- ^ The language code of the language of the source text. The language must be a language supported by Amazon Translate.
  , submittedTime :: Core.Maybe Core.NominalDiffTime
    -- ^ The time at which the translation job was submitted.
  , targetLanguageCodes :: Core.Maybe (Core.NonEmpty Types.LanguageCodeString)
    -- ^ The language code of the language of the target text. The language must be a language supported by Amazon Translate.
  , terminologyNames :: Core.Maybe [Types.ResourceName]
    -- ^ A list containing the names of the terminologies applied to a translation job. Only one terminology can be applied per 'StartTextTranslationJob' request at this time.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'TextTranslationJobProperties' value with any optional fields omitted.
mkTextTranslationJobProperties
    :: TextTranslationJobProperties
mkTextTranslationJobProperties
  = TextTranslationJobProperties'{dataAccessRoleArn = Core.Nothing,
                                  endTime = Core.Nothing, inputDataConfig = Core.Nothing,
                                  jobDetails = Core.Nothing, jobId = Core.Nothing,
                                  jobName = Core.Nothing, jobStatus = Core.Nothing,
                                  message = Core.Nothing, outputDataConfig = Core.Nothing,
                                  parallelDataNames = Core.Nothing,
                                  sourceLanguageCode = Core.Nothing, submittedTime = Core.Nothing,
                                  targetLanguageCodes = Core.Nothing,
                                  terminologyNames = Core.Nothing}

-- | The Amazon Resource Name (ARN) of an AWS Identity Access and Management (IAM) role that granted Amazon Translate read access to the job's input data.
--
-- /Note:/ Consider using 'dataAccessRoleArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ttjpDataAccessRoleArn :: Lens.Lens' TextTranslationJobProperties (Core.Maybe Types.IamRoleArn)
ttjpDataAccessRoleArn = Lens.field @"dataAccessRoleArn"
{-# INLINEABLE ttjpDataAccessRoleArn #-}
{-# DEPRECATED dataAccessRoleArn "Use generic-lens or generic-optics with 'dataAccessRoleArn' instead"  #-}

-- | The time at which the translation job ended.
--
-- /Note:/ Consider using 'endTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ttjpEndTime :: Lens.Lens' TextTranslationJobProperties (Core.Maybe Core.NominalDiffTime)
ttjpEndTime = Lens.field @"endTime"
{-# INLINEABLE ttjpEndTime #-}
{-# DEPRECATED endTime "Use generic-lens or generic-optics with 'endTime' instead"  #-}

-- | The input configuration properties that were specified when the job was requested.
--
-- /Note:/ Consider using 'inputDataConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ttjpInputDataConfig :: Lens.Lens' TextTranslationJobProperties (Core.Maybe Types.InputDataConfig)
ttjpInputDataConfig = Lens.field @"inputDataConfig"
{-# INLINEABLE ttjpInputDataConfig #-}
{-# DEPRECATED inputDataConfig "Use generic-lens or generic-optics with 'inputDataConfig' instead"  #-}

-- | The number of documents successfully and unsuccessfully processed during the translation job.
--
-- /Note:/ Consider using 'jobDetails' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ttjpJobDetails :: Lens.Lens' TextTranslationJobProperties (Core.Maybe Types.JobDetails)
ttjpJobDetails = Lens.field @"jobDetails"
{-# INLINEABLE ttjpJobDetails #-}
{-# DEPRECATED jobDetails "Use generic-lens or generic-optics with 'jobDetails' instead"  #-}

-- | The ID of the translation job.
--
-- /Note:/ Consider using 'jobId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ttjpJobId :: Lens.Lens' TextTranslationJobProperties (Core.Maybe Types.JobId)
ttjpJobId = Lens.field @"jobId"
{-# INLINEABLE ttjpJobId #-}
{-# DEPRECATED jobId "Use generic-lens or generic-optics with 'jobId' instead"  #-}

-- | The user-defined name of the translation job.
--
-- /Note:/ Consider using 'jobName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ttjpJobName :: Lens.Lens' TextTranslationJobProperties (Core.Maybe Types.JobName)
ttjpJobName = Lens.field @"jobName"
{-# INLINEABLE ttjpJobName #-}
{-# DEPRECATED jobName "Use generic-lens or generic-optics with 'jobName' instead"  #-}

-- | The status of the translation job.
--
-- /Note:/ Consider using 'jobStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ttjpJobStatus :: Lens.Lens' TextTranslationJobProperties (Core.Maybe Types.JobStatus)
ttjpJobStatus = Lens.field @"jobStatus"
{-# INLINEABLE ttjpJobStatus #-}
{-# DEPRECATED jobStatus "Use generic-lens or generic-optics with 'jobStatus' instead"  #-}

-- | An explanation of any errors that may have occured during the translation job.
--
-- /Note:/ Consider using 'message' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ttjpMessage :: Lens.Lens' TextTranslationJobProperties (Core.Maybe Types.Message)
ttjpMessage = Lens.field @"message"
{-# INLINEABLE ttjpMessage #-}
{-# DEPRECATED message "Use generic-lens or generic-optics with 'message' instead"  #-}

-- | The output configuration properties that were specified when the job was requested.
--
-- /Note:/ Consider using 'outputDataConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ttjpOutputDataConfig :: Lens.Lens' TextTranslationJobProperties (Core.Maybe Types.OutputDataConfig)
ttjpOutputDataConfig = Lens.field @"outputDataConfig"
{-# INLINEABLE ttjpOutputDataConfig #-}
{-# DEPRECATED outputDataConfig "Use generic-lens or generic-optics with 'outputDataConfig' instead"  #-}

-- | A list containing the names of the parallel data resources applied to the translation job.
--
-- /Note:/ Consider using 'parallelDataNames' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ttjpParallelDataNames :: Lens.Lens' TextTranslationJobProperties (Core.Maybe [Types.ResourceName])
ttjpParallelDataNames = Lens.field @"parallelDataNames"
{-# INLINEABLE ttjpParallelDataNames #-}
{-# DEPRECATED parallelDataNames "Use generic-lens or generic-optics with 'parallelDataNames' instead"  #-}

-- | The language code of the language of the source text. The language must be a language supported by Amazon Translate.
--
-- /Note:/ Consider using 'sourceLanguageCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ttjpSourceLanguageCode :: Lens.Lens' TextTranslationJobProperties (Core.Maybe Types.LanguageCodeString)
ttjpSourceLanguageCode = Lens.field @"sourceLanguageCode"
{-# INLINEABLE ttjpSourceLanguageCode #-}
{-# DEPRECATED sourceLanguageCode "Use generic-lens or generic-optics with 'sourceLanguageCode' instead"  #-}

-- | The time at which the translation job was submitted.
--
-- /Note:/ Consider using 'submittedTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ttjpSubmittedTime :: Lens.Lens' TextTranslationJobProperties (Core.Maybe Core.NominalDiffTime)
ttjpSubmittedTime = Lens.field @"submittedTime"
{-# INLINEABLE ttjpSubmittedTime #-}
{-# DEPRECATED submittedTime "Use generic-lens or generic-optics with 'submittedTime' instead"  #-}

-- | The language code of the language of the target text. The language must be a language supported by Amazon Translate.
--
-- /Note:/ Consider using 'targetLanguageCodes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ttjpTargetLanguageCodes :: Lens.Lens' TextTranslationJobProperties (Core.Maybe (Core.NonEmpty Types.LanguageCodeString))
ttjpTargetLanguageCodes = Lens.field @"targetLanguageCodes"
{-# INLINEABLE ttjpTargetLanguageCodes #-}
{-# DEPRECATED targetLanguageCodes "Use generic-lens or generic-optics with 'targetLanguageCodes' instead"  #-}

-- | A list containing the names of the terminologies applied to a translation job. Only one terminology can be applied per 'StartTextTranslationJob' request at this time.
--
-- /Note:/ Consider using 'terminologyNames' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ttjpTerminologyNames :: Lens.Lens' TextTranslationJobProperties (Core.Maybe [Types.ResourceName])
ttjpTerminologyNames = Lens.field @"terminologyNames"
{-# INLINEABLE ttjpTerminologyNames #-}
{-# DEPRECATED terminologyNames "Use generic-lens or generic-optics with 'terminologyNames' instead"  #-}

instance Core.FromJSON TextTranslationJobProperties where
        parseJSON
          = Core.withObject "TextTranslationJobProperties" Core.$
              \ x ->
                TextTranslationJobProperties' Core.<$>
                  (x Core..:? "DataAccessRoleArn") Core.<*> x Core..:? "EndTime"
                    Core.<*> x Core..:? "InputDataConfig"
                    Core.<*> x Core..:? "JobDetails"
                    Core.<*> x Core..:? "JobId"
                    Core.<*> x Core..:? "JobName"
                    Core.<*> x Core..:? "JobStatus"
                    Core.<*> x Core..:? "Message"
                    Core.<*> x Core..:? "OutputDataConfig"
                    Core.<*> x Core..:? "ParallelDataNames"
                    Core.<*> x Core..:? "SourceLanguageCode"
                    Core.<*> x Core..:? "SubmittedTime"
                    Core.<*> x Core..:? "TargetLanguageCodes"
                    Core.<*> x Core..:? "TerminologyNames"
