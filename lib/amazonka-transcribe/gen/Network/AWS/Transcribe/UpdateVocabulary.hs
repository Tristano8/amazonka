{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.UpdateVocabulary
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing vocabulary with new values. The @UpdateVocabulary@ operation overwrites all of the existing information with the values that you provide in the request. 
module Network.AWS.Transcribe.UpdateVocabulary
    (
    -- * Creating a request
      UpdateVocabulary (..)
    , mkUpdateVocabulary
    -- ** Request lenses
    , uvVocabularyName
    , uvLanguageCode
    , uvPhrases
    , uvVocabularyFileUri

    -- * Destructuring the response
    , UpdateVocabularyResponse (..)
    , mkUpdateVocabularyResponse
    -- ** Response lenses
    , uvrrsLanguageCode
    , uvrrsLastModifiedTime
    , uvrrsVocabularyName
    , uvrrsVocabularyState
    , uvrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.Transcribe.Types as Types

-- | /See:/ 'mkUpdateVocabulary' smart constructor.
data UpdateVocabulary = UpdateVocabulary'
  { vocabularyName :: Types.VocabularyName
    -- ^ The name of the vocabulary to update. The name is case sensitive. If you try to update a vocabulary with the same name as a previous vocabulary you will receive a @ConflictException@ error.
  , languageCode :: Types.LanguageCode
    -- ^ The language code of the vocabulary entries.
  , phrases :: Core.Maybe [Types.Phrase]
    -- ^ An array of strings containing the vocabulary entries.
  , vocabularyFileUri :: Core.Maybe Types.VocabularyFileUri
    -- ^ The S3 location of the text file that contains the definition of the custom vocabulary. The URI must be in the same region as the API endpoint that you are calling. The general form is 
--
-- For example:
-- For more information about S3 object names, see <http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys Object Keys> in the /Amazon S3 Developer Guide/ .
-- For more information about custom vocabularies, see <http://docs.aws.amazon.com/transcribe/latest/dg/how-it-works.html#how-vocabulary Custom Vocabularies> .
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateVocabulary' value with any optional fields omitted.
mkUpdateVocabulary
    :: Types.VocabularyName -- ^ 'vocabularyName'
    -> Types.LanguageCode -- ^ 'languageCode'
    -> UpdateVocabulary
mkUpdateVocabulary vocabularyName languageCode
  = UpdateVocabulary'{vocabularyName, languageCode,
                      phrases = Core.Nothing, vocabularyFileUri = Core.Nothing}

-- | The name of the vocabulary to update. The name is case sensitive. If you try to update a vocabulary with the same name as a previous vocabulary you will receive a @ConflictException@ error.
--
-- /Note:/ Consider using 'vocabularyName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uvVocabularyName :: Lens.Lens' UpdateVocabulary Types.VocabularyName
uvVocabularyName = Lens.field @"vocabularyName"
{-# INLINEABLE uvVocabularyName #-}
{-# DEPRECATED vocabularyName "Use generic-lens or generic-optics with 'vocabularyName' instead"  #-}

-- | The language code of the vocabulary entries.
--
-- /Note:/ Consider using 'languageCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uvLanguageCode :: Lens.Lens' UpdateVocabulary Types.LanguageCode
uvLanguageCode = Lens.field @"languageCode"
{-# INLINEABLE uvLanguageCode #-}
{-# DEPRECATED languageCode "Use generic-lens or generic-optics with 'languageCode' instead"  #-}

-- | An array of strings containing the vocabulary entries.
--
-- /Note:/ Consider using 'phrases' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uvPhrases :: Lens.Lens' UpdateVocabulary (Core.Maybe [Types.Phrase])
uvPhrases = Lens.field @"phrases"
{-# INLINEABLE uvPhrases #-}
{-# DEPRECATED phrases "Use generic-lens or generic-optics with 'phrases' instead"  #-}

-- | The S3 location of the text file that contains the definition of the custom vocabulary. The URI must be in the same region as the API endpoint that you are calling. The general form is 
--
-- For example:
-- For more information about S3 object names, see <http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys Object Keys> in the /Amazon S3 Developer Guide/ .
-- For more information about custom vocabularies, see <http://docs.aws.amazon.com/transcribe/latest/dg/how-it-works.html#how-vocabulary Custom Vocabularies> .
--
-- /Note:/ Consider using 'vocabularyFileUri' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uvVocabularyFileUri :: Lens.Lens' UpdateVocabulary (Core.Maybe Types.VocabularyFileUri)
uvVocabularyFileUri = Lens.field @"vocabularyFileUri"
{-# INLINEABLE uvVocabularyFileUri #-}
{-# DEPRECATED vocabularyFileUri "Use generic-lens or generic-optics with 'vocabularyFileUri' instead"  #-}

instance Core.ToQuery UpdateVocabulary where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders UpdateVocabulary where
        toHeaders UpdateVocabulary{..}
          = Core.pure ("X-Amz-Target", "Transcribe.UpdateVocabulary") Core.<>
              Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON UpdateVocabulary where
        toJSON UpdateVocabulary{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("VocabularyName" Core..= vocabularyName),
                  Core.Just ("LanguageCode" Core..= languageCode),
                  ("Phrases" Core..=) Core.<$> phrases,
                  ("VocabularyFileUri" Core..=) Core.<$> vocabularyFileUri])

instance Core.AWSRequest UpdateVocabulary where
        type Rs UpdateVocabulary = UpdateVocabularyResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 UpdateVocabularyResponse' Core.<$>
                   (x Core..:? "LanguageCode") Core.<*> x Core..:? "LastModifiedTime"
                     Core.<*> x Core..:? "VocabularyName"
                     Core.<*> x Core..:? "VocabularyState"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkUpdateVocabularyResponse' smart constructor.
data UpdateVocabularyResponse = UpdateVocabularyResponse'
  { languageCode :: Core.Maybe Types.LanguageCode
    -- ^ The language code of the vocabulary entries.
  , lastModifiedTime :: Core.Maybe Core.NominalDiffTime
    -- ^ The date and time that the vocabulary was updated.
  , vocabularyName :: Core.Maybe Types.VocabularyName
    -- ^ The name of the vocabulary that was updated.
  , vocabularyState :: Core.Maybe Types.VocabularyState
    -- ^ The processing state of the vocabulary. When the @VocabularyState@ field contains @READY@ the vocabulary is ready to be used in a @StartTranscriptionJob@ request.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'UpdateVocabularyResponse' value with any optional fields omitted.
mkUpdateVocabularyResponse
    :: Core.Int -- ^ 'responseStatus'
    -> UpdateVocabularyResponse
mkUpdateVocabularyResponse responseStatus
  = UpdateVocabularyResponse'{languageCode = Core.Nothing,
                              lastModifiedTime = Core.Nothing, vocabularyName = Core.Nothing,
                              vocabularyState = Core.Nothing, responseStatus}

-- | The language code of the vocabulary entries.
--
-- /Note:/ Consider using 'languageCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uvrrsLanguageCode :: Lens.Lens' UpdateVocabularyResponse (Core.Maybe Types.LanguageCode)
uvrrsLanguageCode = Lens.field @"languageCode"
{-# INLINEABLE uvrrsLanguageCode #-}
{-# DEPRECATED languageCode "Use generic-lens or generic-optics with 'languageCode' instead"  #-}

-- | The date and time that the vocabulary was updated.
--
-- /Note:/ Consider using 'lastModifiedTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uvrrsLastModifiedTime :: Lens.Lens' UpdateVocabularyResponse (Core.Maybe Core.NominalDiffTime)
uvrrsLastModifiedTime = Lens.field @"lastModifiedTime"
{-# INLINEABLE uvrrsLastModifiedTime #-}
{-# DEPRECATED lastModifiedTime "Use generic-lens or generic-optics with 'lastModifiedTime' instead"  #-}

-- | The name of the vocabulary that was updated.
--
-- /Note:/ Consider using 'vocabularyName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uvrrsVocabularyName :: Lens.Lens' UpdateVocabularyResponse (Core.Maybe Types.VocabularyName)
uvrrsVocabularyName = Lens.field @"vocabularyName"
{-# INLINEABLE uvrrsVocabularyName #-}
{-# DEPRECATED vocabularyName "Use generic-lens or generic-optics with 'vocabularyName' instead"  #-}

-- | The processing state of the vocabulary. When the @VocabularyState@ field contains @READY@ the vocabulary is ready to be used in a @StartTranscriptionJob@ request.
--
-- /Note:/ Consider using 'vocabularyState' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uvrrsVocabularyState :: Lens.Lens' UpdateVocabularyResponse (Core.Maybe Types.VocabularyState)
uvrrsVocabularyState = Lens.field @"vocabularyState"
{-# INLINEABLE uvrrsVocabularyState #-}
{-# DEPRECATED vocabularyState "Use generic-lens or generic-optics with 'vocabularyState' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uvrrsResponseStatus :: Lens.Lens' UpdateVocabularyResponse Core.Int
uvrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE uvrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
