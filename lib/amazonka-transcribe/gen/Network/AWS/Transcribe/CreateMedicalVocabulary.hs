{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.CreateMedicalVocabulary
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new custom vocabulary that you can use to change how Amazon Transcribe Medical transcribes your audio file.
module Network.AWS.Transcribe.CreateMedicalVocabulary
    (
    -- * Creating a request
      CreateMedicalVocabulary (..)
    , mkCreateMedicalVocabulary
    -- ** Request lenses
    , cmvVocabularyName
    , cmvLanguageCode
    , cmvVocabularyFileUri

    -- * Destructuring the response
    , CreateMedicalVocabularyResponse (..)
    , mkCreateMedicalVocabularyResponse
    -- ** Response lenses
    , cmvrrsFailureReason
    , cmvrrsLanguageCode
    , cmvrrsLastModifiedTime
    , cmvrrsVocabularyName
    , cmvrrsVocabularyState
    , cmvrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.Transcribe.Types as Types

-- | /See:/ 'mkCreateMedicalVocabulary' smart constructor.
data CreateMedicalVocabulary = CreateMedicalVocabulary'
  { vocabularyName :: Types.VocabularyName
    -- ^ The name of the custom vocabulary. This case-sensitive name must be unique within an AWS account. If you try to create a vocabulary with the same name as a previous vocabulary, you get a @ConflictException@ error.
  , languageCode :: Types.LanguageCode
    -- ^ The language code for the language used for the entries in your custom vocabulary. The language code of your custom vocabulary must match the language code of your transcription job. US English (en-US) is the only language code available for Amazon Transcribe Medical.
  , vocabularyFileUri :: Types.Uri
    -- ^ The location in Amazon S3 of the text file you use to define your custom vocabulary. The URI must be in the same AWS Region as the resource that you're calling. Enter information about your @VocabularyFileUri@ in the following format:
--
-- @https://s3.<aws-region>.amazonaws.com/<bucket-name>/<keyprefix>/<objectkey> @ 
-- The following is an example URI for a vocabulary file that is stored in Amazon S3:
-- @https://s3.us-east-1.amazonaws.com/AWSDOC-EXAMPLE-BUCKET/vocab.txt@ 
-- For more information about Amazon S3 object names, see <http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys Object Keys> in the /Amazon S3 Developer Guide/ .
-- For more information about custom vocabularies, see <http://docs.aws.amazon.com/transcribe/latest/dg/how-it-works.html#how-vocabulary-med Medical Custom Vocabularies> .
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateMedicalVocabulary' value with any optional fields omitted.
mkCreateMedicalVocabulary
    :: Types.VocabularyName -- ^ 'vocabularyName'
    -> Types.LanguageCode -- ^ 'languageCode'
    -> Types.Uri -- ^ 'vocabularyFileUri'
    -> CreateMedicalVocabulary
mkCreateMedicalVocabulary vocabularyName languageCode
  vocabularyFileUri
  = CreateMedicalVocabulary'{vocabularyName, languageCode,
                             vocabularyFileUri}

-- | The name of the custom vocabulary. This case-sensitive name must be unique within an AWS account. If you try to create a vocabulary with the same name as a previous vocabulary, you get a @ConflictException@ error.
--
-- /Note:/ Consider using 'vocabularyName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cmvVocabularyName :: Lens.Lens' CreateMedicalVocabulary Types.VocabularyName
cmvVocabularyName = Lens.field @"vocabularyName"
{-# INLINEABLE cmvVocabularyName #-}
{-# DEPRECATED vocabularyName "Use generic-lens or generic-optics with 'vocabularyName' instead"  #-}

-- | The language code for the language used for the entries in your custom vocabulary. The language code of your custom vocabulary must match the language code of your transcription job. US English (en-US) is the only language code available for Amazon Transcribe Medical.
--
-- /Note:/ Consider using 'languageCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cmvLanguageCode :: Lens.Lens' CreateMedicalVocabulary Types.LanguageCode
cmvLanguageCode = Lens.field @"languageCode"
{-# INLINEABLE cmvLanguageCode #-}
{-# DEPRECATED languageCode "Use generic-lens or generic-optics with 'languageCode' instead"  #-}

-- | The location in Amazon S3 of the text file you use to define your custom vocabulary. The URI must be in the same AWS Region as the resource that you're calling. Enter information about your @VocabularyFileUri@ in the following format:
--
-- @https://s3.<aws-region>.amazonaws.com/<bucket-name>/<keyprefix>/<objectkey> @ 
-- The following is an example URI for a vocabulary file that is stored in Amazon S3:
-- @https://s3.us-east-1.amazonaws.com/AWSDOC-EXAMPLE-BUCKET/vocab.txt@ 
-- For more information about Amazon S3 object names, see <http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys Object Keys> in the /Amazon S3 Developer Guide/ .
-- For more information about custom vocabularies, see <http://docs.aws.amazon.com/transcribe/latest/dg/how-it-works.html#how-vocabulary-med Medical Custom Vocabularies> .
--
-- /Note:/ Consider using 'vocabularyFileUri' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cmvVocabularyFileUri :: Lens.Lens' CreateMedicalVocabulary Types.Uri
cmvVocabularyFileUri = Lens.field @"vocabularyFileUri"
{-# INLINEABLE cmvVocabularyFileUri #-}
{-# DEPRECATED vocabularyFileUri "Use generic-lens or generic-optics with 'vocabularyFileUri' instead"  #-}

instance Core.ToQuery CreateMedicalVocabulary where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders CreateMedicalVocabulary where
        toHeaders CreateMedicalVocabulary{..}
          = Core.pure ("X-Amz-Target", "Transcribe.CreateMedicalVocabulary")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON CreateMedicalVocabulary where
        toJSON CreateMedicalVocabulary{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("VocabularyName" Core..= vocabularyName),
                  Core.Just ("LanguageCode" Core..= languageCode),
                  Core.Just ("VocabularyFileUri" Core..= vocabularyFileUri)])

instance Core.AWSRequest CreateMedicalVocabulary where
        type Rs CreateMedicalVocabulary = CreateMedicalVocabularyResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 CreateMedicalVocabularyResponse' Core.<$>
                   (x Core..:? "FailureReason") Core.<*> x Core..:? "LanguageCode"
                     Core.<*> x Core..:? "LastModifiedTime"
                     Core.<*> x Core..:? "VocabularyName"
                     Core.<*> x Core..:? "VocabularyState"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkCreateMedicalVocabularyResponse' smart constructor.
data CreateMedicalVocabularyResponse = CreateMedicalVocabularyResponse'
  { failureReason :: Core.Maybe Types.FailureReason
    -- ^ If the @VocabularyState@ field is @FAILED@ , this field contains information about why the job failed.
  , languageCode :: Core.Maybe Types.LanguageCode
    -- ^ The language code for the entries in your custom vocabulary. US English (en-US) is the only valid language code for Amazon Transcribe Medical.
  , lastModifiedTime :: Core.Maybe Core.NominalDiffTime
    -- ^ The date and time that you created the vocabulary.
  , vocabularyName :: Core.Maybe Types.VocabularyName
    -- ^ The name of the vocabulary. The name must be unique within an AWS account and is case sensitive.
  , vocabularyState :: Core.Maybe Types.VocabularyState
    -- ^ The processing state of your custom vocabulary in Amazon Transcribe Medical. If the state is @READY@ , you can use the vocabulary in a @StartMedicalTranscriptionJob@ request.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'CreateMedicalVocabularyResponse' value with any optional fields omitted.
mkCreateMedicalVocabularyResponse
    :: Core.Int -- ^ 'responseStatus'
    -> CreateMedicalVocabularyResponse
mkCreateMedicalVocabularyResponse responseStatus
  = CreateMedicalVocabularyResponse'{failureReason = Core.Nothing,
                                     languageCode = Core.Nothing, lastModifiedTime = Core.Nothing,
                                     vocabularyName = Core.Nothing, vocabularyState = Core.Nothing,
                                     responseStatus}

-- | If the @VocabularyState@ field is @FAILED@ , this field contains information about why the job failed.
--
-- /Note:/ Consider using 'failureReason' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cmvrrsFailureReason :: Lens.Lens' CreateMedicalVocabularyResponse (Core.Maybe Types.FailureReason)
cmvrrsFailureReason = Lens.field @"failureReason"
{-# INLINEABLE cmvrrsFailureReason #-}
{-# DEPRECATED failureReason "Use generic-lens or generic-optics with 'failureReason' instead"  #-}

-- | The language code for the entries in your custom vocabulary. US English (en-US) is the only valid language code for Amazon Transcribe Medical.
--
-- /Note:/ Consider using 'languageCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cmvrrsLanguageCode :: Lens.Lens' CreateMedicalVocabularyResponse (Core.Maybe Types.LanguageCode)
cmvrrsLanguageCode = Lens.field @"languageCode"
{-# INLINEABLE cmvrrsLanguageCode #-}
{-# DEPRECATED languageCode "Use generic-lens or generic-optics with 'languageCode' instead"  #-}

-- | The date and time that you created the vocabulary.
--
-- /Note:/ Consider using 'lastModifiedTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cmvrrsLastModifiedTime :: Lens.Lens' CreateMedicalVocabularyResponse (Core.Maybe Core.NominalDiffTime)
cmvrrsLastModifiedTime = Lens.field @"lastModifiedTime"
{-# INLINEABLE cmvrrsLastModifiedTime #-}
{-# DEPRECATED lastModifiedTime "Use generic-lens or generic-optics with 'lastModifiedTime' instead"  #-}

-- | The name of the vocabulary. The name must be unique within an AWS account and is case sensitive.
--
-- /Note:/ Consider using 'vocabularyName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cmvrrsVocabularyName :: Lens.Lens' CreateMedicalVocabularyResponse (Core.Maybe Types.VocabularyName)
cmvrrsVocabularyName = Lens.field @"vocabularyName"
{-# INLINEABLE cmvrrsVocabularyName #-}
{-# DEPRECATED vocabularyName "Use generic-lens or generic-optics with 'vocabularyName' instead"  #-}

-- | The processing state of your custom vocabulary in Amazon Transcribe Medical. If the state is @READY@ , you can use the vocabulary in a @StartMedicalTranscriptionJob@ request.
--
-- /Note:/ Consider using 'vocabularyState' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cmvrrsVocabularyState :: Lens.Lens' CreateMedicalVocabularyResponse (Core.Maybe Types.VocabularyState)
cmvrrsVocabularyState = Lens.field @"vocabularyState"
{-# INLINEABLE cmvrrsVocabularyState #-}
{-# DEPRECATED vocabularyState "Use generic-lens or generic-optics with 'vocabularyState' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cmvrrsResponseStatus :: Lens.Lens' CreateMedicalVocabularyResponse Core.Int
cmvrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE cmvrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
