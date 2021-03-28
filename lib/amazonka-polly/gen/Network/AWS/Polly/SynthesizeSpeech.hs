{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Polly.SynthesizeSpeech
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Synthesizes UTF-8 input, plain text or SSML, to a stream of bytes. SSML input must be valid, well-formed SSML. Some alphabets might not be available with all the voices (for example, Cyrillic might not be read at all by English voices) unless phoneme mapping is used. For more information, see <https://docs.aws.amazon.com/polly/latest/dg/how-text-to-speech-works.html How it Works> .
module Network.AWS.Polly.SynthesizeSpeech
    (
    -- * Creating a request
      SynthesizeSpeech (..)
    , mkSynthesizeSpeech
    -- ** Request lenses
    , ssOutputFormat
    , ssText
    , ssVoiceId
    , ssEngine
    , ssLanguageCode
    , ssLexiconNames
    , ssSampleRate
    , ssSpeechMarkTypes
    , ssTextType

    -- * Destructuring the response
    , SynthesizeSpeechResponse (..)
    , mkSynthesizeSpeechResponse
    -- ** Response lenses
    , ssrrsAudioStream
    , ssrrsContentType
    , ssrrsRequestCharacters
    , ssrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Polly.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkSynthesizeSpeech' smart constructor.
data SynthesizeSpeech = SynthesizeSpeech'
  { outputFormat :: Types.OutputFormat
    -- ^ The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json. 
--
-- When pcm is used, the content returned is audio/pcm in a signed 16-bit, 1 channel (mono), little-endian format. 
  , text :: Types.Text
    -- ^ Input text to synthesize. If you specify @ssml@ as the @TextType@ , follow the SSML format for the input text. 
  , voiceId :: Types.VoiceId
    -- ^ Voice ID to use for the synthesis. You can get a list of available voice IDs by calling the <https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html DescribeVoices> operation. 
  , engine :: Core.Maybe Types.Engine
    -- ^ Specifies the engine (@standard@ or @neural@ ) for Amazon Polly to use when processing input text for speech synthesis. For information on Amazon Polly voices and which voices are available in standard-only, NTTS-only, and both standard and NTTS formats, see <https://docs.aws.amazon.com/polly/latest/dg/voicelist.html Available Voices> .
--
-- __NTTS-only voices__ 
-- When using NTTS-only voices such as Kevin (en-US), this parameter is required and must be set to @neural@ . If the engine is not specified, or is set to @standard@ , this will result in an error. 
-- Type: String
-- Valid Values: @standard@ | @neural@ 
-- Required: Yes
-- __Standard voices__ 
-- For standard voices, this is not required; the engine parameter defaults to @standard@ . If the engine is not specified, or is set to @standard@ and an NTTS-only voice is selected, this will result in an error. 
  , languageCode :: Core.Maybe Types.LanguageCode
    -- ^ Optional language code for the Synthesize Speech request. This is only necessary if using a bilingual voice, such as Aditi, which can be used for either Indian English (en-IN) or Hindi (hi-IN). 
--
-- If a bilingual voice is used and no language code is specified, Amazon Polly will use the default language of the bilingual voice. The default language for any voice is the one returned by the <https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html DescribeVoices> operation for the @LanguageCode@ parameter. For example, if no language code is specified, Aditi will use Indian English rather than Hindi.
  , lexiconNames :: Core.Maybe [Types.LexiconName]
    -- ^ List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice. For information about storing lexicons, see <https://docs.aws.amazon.com/polly/latest/dg/API_PutLexicon.html PutLexicon> .
  , sampleRate :: Core.Maybe Types.SampleRate
    -- ^ The audio frequency specified in Hz.
--
-- The valid values for mp3 and ogg_vorbis are "8000", "16000", "22050", and "24000". The default value for standard voices is "22050". The default value for neural voices is "24000".
-- Valid values for pcm are "8000" and "16000" The default value is "16000". 
  , speechMarkTypes :: Core.Maybe [Types.SpeechMarkType]
    -- ^ The type of speech marks returned for the input text.
  , textType :: Core.Maybe Types.TextType
    -- ^ Specifies whether the input text is plain text or SSML. The default value is plain text. For more information, see <https://docs.aws.amazon.com/polly/latest/dg/ssml.html Using SSML> .
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'SynthesizeSpeech' value with any optional fields omitted.
mkSynthesizeSpeech
    :: Types.OutputFormat -- ^ 'outputFormat'
    -> Types.Text -- ^ 'text'
    -> Types.VoiceId -- ^ 'voiceId'
    -> SynthesizeSpeech
mkSynthesizeSpeech outputFormat text voiceId
  = SynthesizeSpeech'{outputFormat, text, voiceId,
                      engine = Core.Nothing, languageCode = Core.Nothing,
                      lexiconNames = Core.Nothing, sampleRate = Core.Nothing,
                      speechMarkTypes = Core.Nothing, textType = Core.Nothing}

-- | The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json. 
--
-- When pcm is used, the content returned is audio/pcm in a signed 16-bit, 1 channel (mono), little-endian format. 
--
-- /Note:/ Consider using 'outputFormat' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssOutputFormat :: Lens.Lens' SynthesizeSpeech Types.OutputFormat
ssOutputFormat = Lens.field @"outputFormat"
{-# INLINEABLE ssOutputFormat #-}
{-# DEPRECATED outputFormat "Use generic-lens or generic-optics with 'outputFormat' instead"  #-}

-- | Input text to synthesize. If you specify @ssml@ as the @TextType@ , follow the SSML format for the input text. 
--
-- /Note:/ Consider using 'text' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssText :: Lens.Lens' SynthesizeSpeech Types.Text
ssText = Lens.field @"text"
{-# INLINEABLE ssText #-}
{-# DEPRECATED text "Use generic-lens or generic-optics with 'text' instead"  #-}

-- | Voice ID to use for the synthesis. You can get a list of available voice IDs by calling the <https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html DescribeVoices> operation. 
--
-- /Note:/ Consider using 'voiceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssVoiceId :: Lens.Lens' SynthesizeSpeech Types.VoiceId
ssVoiceId = Lens.field @"voiceId"
{-# INLINEABLE ssVoiceId #-}
{-# DEPRECATED voiceId "Use generic-lens or generic-optics with 'voiceId' instead"  #-}

-- | Specifies the engine (@standard@ or @neural@ ) for Amazon Polly to use when processing input text for speech synthesis. For information on Amazon Polly voices and which voices are available in standard-only, NTTS-only, and both standard and NTTS formats, see <https://docs.aws.amazon.com/polly/latest/dg/voicelist.html Available Voices> .
--
-- __NTTS-only voices__ 
-- When using NTTS-only voices such as Kevin (en-US), this parameter is required and must be set to @neural@ . If the engine is not specified, or is set to @standard@ , this will result in an error. 
-- Type: String
-- Valid Values: @standard@ | @neural@ 
-- Required: Yes
-- __Standard voices__ 
-- For standard voices, this is not required; the engine parameter defaults to @standard@ . If the engine is not specified, or is set to @standard@ and an NTTS-only voice is selected, this will result in an error. 
--
-- /Note:/ Consider using 'engine' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssEngine :: Lens.Lens' SynthesizeSpeech (Core.Maybe Types.Engine)
ssEngine = Lens.field @"engine"
{-# INLINEABLE ssEngine #-}
{-# DEPRECATED engine "Use generic-lens or generic-optics with 'engine' instead"  #-}

-- | Optional language code for the Synthesize Speech request. This is only necessary if using a bilingual voice, such as Aditi, which can be used for either Indian English (en-IN) or Hindi (hi-IN). 
--
-- If a bilingual voice is used and no language code is specified, Amazon Polly will use the default language of the bilingual voice. The default language for any voice is the one returned by the <https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html DescribeVoices> operation for the @LanguageCode@ parameter. For example, if no language code is specified, Aditi will use Indian English rather than Hindi.
--
-- /Note:/ Consider using 'languageCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssLanguageCode :: Lens.Lens' SynthesizeSpeech (Core.Maybe Types.LanguageCode)
ssLanguageCode = Lens.field @"languageCode"
{-# INLINEABLE ssLanguageCode #-}
{-# DEPRECATED languageCode "Use generic-lens or generic-optics with 'languageCode' instead"  #-}

-- | List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice. For information about storing lexicons, see <https://docs.aws.amazon.com/polly/latest/dg/API_PutLexicon.html PutLexicon> .
--
-- /Note:/ Consider using 'lexiconNames' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssLexiconNames :: Lens.Lens' SynthesizeSpeech (Core.Maybe [Types.LexiconName])
ssLexiconNames = Lens.field @"lexiconNames"
{-# INLINEABLE ssLexiconNames #-}
{-# DEPRECATED lexiconNames "Use generic-lens or generic-optics with 'lexiconNames' instead"  #-}

-- | The audio frequency specified in Hz.
--
-- The valid values for mp3 and ogg_vorbis are "8000", "16000", "22050", and "24000". The default value for standard voices is "22050". The default value for neural voices is "24000".
-- Valid values for pcm are "8000" and "16000" The default value is "16000". 
--
-- /Note:/ Consider using 'sampleRate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssSampleRate :: Lens.Lens' SynthesizeSpeech (Core.Maybe Types.SampleRate)
ssSampleRate = Lens.field @"sampleRate"
{-# INLINEABLE ssSampleRate #-}
{-# DEPRECATED sampleRate "Use generic-lens or generic-optics with 'sampleRate' instead"  #-}

-- | The type of speech marks returned for the input text.
--
-- /Note:/ Consider using 'speechMarkTypes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssSpeechMarkTypes :: Lens.Lens' SynthesizeSpeech (Core.Maybe [Types.SpeechMarkType])
ssSpeechMarkTypes = Lens.field @"speechMarkTypes"
{-# INLINEABLE ssSpeechMarkTypes #-}
{-# DEPRECATED speechMarkTypes "Use generic-lens or generic-optics with 'speechMarkTypes' instead"  #-}

-- | Specifies whether the input text is plain text or SSML. The default value is plain text. For more information, see <https://docs.aws.amazon.com/polly/latest/dg/ssml.html Using SSML> .
--
-- /Note:/ Consider using 'textType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssTextType :: Lens.Lens' SynthesizeSpeech (Core.Maybe Types.TextType)
ssTextType = Lens.field @"textType"
{-# INLINEABLE ssTextType #-}
{-# DEPRECATED textType "Use generic-lens or generic-optics with 'textType' instead"  #-}

instance Core.ToQuery SynthesizeSpeech where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders SynthesizeSpeech where
        toHeaders _ = Core.pure Core.mempty

instance Core.FromJSON SynthesizeSpeech where
        toJSON SynthesizeSpeech{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("OutputFormat" Core..= outputFormat),
                  Core.Just ("Text" Core..= text),
                  Core.Just ("VoiceId" Core..= voiceId),
                  ("Engine" Core..=) Core.<$> engine,
                  ("LanguageCode" Core..=) Core.<$> languageCode,
                  ("LexiconNames" Core..=) Core.<$> lexiconNames,
                  ("SampleRate" Core..=) Core.<$> sampleRate,
                  ("SpeechMarkTypes" Core..=) Core.<$> speechMarkTypes,
                  ("TextType" Core..=) Core.<$> textType])

instance Core.AWSRequest SynthesizeSpeech where
        type Rs SynthesizeSpeech = SynthesizeSpeechResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/v1/speech",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveBody
              (\ s h x ->
                 SynthesizeSpeechResponse' Core.<$>
                   (Core.pure x) Core.<*> Core.parseHeaderMaybe "Content-Type" h
                     Core.<*> Core.parseHeaderMaybe "x-amzn-RequestCharacters" h
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkSynthesizeSpeechResponse' smart constructor.
data SynthesizeSpeechResponse = SynthesizeSpeechResponse'
  { audioStream :: Core.RsBody
    -- ^ Stream containing the synthesized speech. 
  , contentType :: Core.Maybe Types.ContentType
    -- ^ Specifies the type audio stream. This should reflect the @OutputFormat@ parameter in your request. 
--
--
--     * If you request @mp3@ as the @OutputFormat@ , the @ContentType@ returned is audio/mpeg. 
--
--
--     * If you request @ogg_vorbis@ as the @OutputFormat@ , the @ContentType@ returned is audio/ogg. 
--
--
--     * If you request @pcm@ as the @OutputFormat@ , the @ContentType@ returned is audio/pcm in a signed 16-bit, 1 channel (mono), little-endian format. 
--
--
--     * If you request @json@ as the @OutputFormat@ , the @ContentType@ returned is audio/json.
--
--
--
  , requestCharacters :: Core.Maybe Core.Int
    -- ^ Number of characters synthesized.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Show, Core.Generic)

-- | Creates a 'SynthesizeSpeechResponse' value with any optional fields omitted.
mkSynthesizeSpeechResponse
    :: Core.RsBody -- ^ 'audioStream'
    -> Core.Int -- ^ 'responseStatus'
    -> SynthesizeSpeechResponse
mkSynthesizeSpeechResponse audioStream responseStatus
  = SynthesizeSpeechResponse'{audioStream,
                              contentType = Core.Nothing, requestCharacters = Core.Nothing,
                              responseStatus}

-- | Stream containing the synthesized speech. 
--
-- /Note:/ Consider using 'audioStream' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssrrsAudioStream :: Lens.Lens' SynthesizeSpeechResponse Core.RsBody
ssrrsAudioStream = Lens.field @"audioStream"
{-# INLINEABLE ssrrsAudioStream #-}
{-# DEPRECATED audioStream "Use generic-lens or generic-optics with 'audioStream' instead"  #-}

-- | Specifies the type audio stream. This should reflect the @OutputFormat@ parameter in your request. 
--
--
--     * If you request @mp3@ as the @OutputFormat@ , the @ContentType@ returned is audio/mpeg. 
--
--
--     * If you request @ogg_vorbis@ as the @OutputFormat@ , the @ContentType@ returned is audio/ogg. 
--
--
--     * If you request @pcm@ as the @OutputFormat@ , the @ContentType@ returned is audio/pcm in a signed 16-bit, 1 channel (mono), little-endian format. 
--
--
--     * If you request @json@ as the @OutputFormat@ , the @ContentType@ returned is audio/json.
--
--
--
--
-- /Note:/ Consider using 'contentType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssrrsContentType :: Lens.Lens' SynthesizeSpeechResponse (Core.Maybe Types.ContentType)
ssrrsContentType = Lens.field @"contentType"
{-# INLINEABLE ssrrsContentType #-}
{-# DEPRECATED contentType "Use generic-lens or generic-optics with 'contentType' instead"  #-}

-- | Number of characters synthesized.
--
-- /Note:/ Consider using 'requestCharacters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssrrsRequestCharacters :: Lens.Lens' SynthesizeSpeechResponse (Core.Maybe Core.Int)
ssrrsRequestCharacters = Lens.field @"requestCharacters"
{-# INLINEABLE ssrrsRequestCharacters #-}
{-# DEPRECATED requestCharacters "Use generic-lens or generic-optics with 'requestCharacters' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssrrsResponseStatus :: Lens.Lens' SynthesizeSpeechResponse Core.Int
ssrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE ssrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
