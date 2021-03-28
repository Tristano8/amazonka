{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.SegmentDetection
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Rekognition.Types.SegmentDetection
  ( SegmentDetection (..)
  -- * Smart constructor
  , mkSegmentDetection
  -- * Lenses
  , sdDurationMillis
  , sdDurationSMPTE
  , sdEndTimecodeSMPTE
  , sdEndTimestampMillis
  , sdShotSegment
  , sdStartTimecodeSMPTE
  , sdStartTimestampMillis
  , sdTechnicalCueSegment
  , sdType
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Rekognition.Types.DurationSMPTE as Types
import qualified Network.AWS.Rekognition.Types.EndTimecodeSMPTE as Types
import qualified Network.AWS.Rekognition.Types.SegmentType as Types
import qualified Network.AWS.Rekognition.Types.ShotSegment as Types
import qualified Network.AWS.Rekognition.Types.StartTimecodeSMPTE as Types
import qualified Network.AWS.Rekognition.Types.TechnicalCueSegment as Types

-- | A technical cue or shot detection segment detected in a video. An array of @SegmentDetection@ objects containing all segments detected in a stored video is returned by 'GetSegmentDetection' . 
--
-- /See:/ 'mkSegmentDetection' smart constructor.
data SegmentDetection = SegmentDetection'
  { durationMillis :: Core.Maybe Core.Natural
    -- ^ The duration of the detected segment in milliseconds. 
  , durationSMPTE :: Core.Maybe Types.DurationSMPTE
    -- ^ The duration of the timecode for the detected segment in SMPTE format.
  , endTimecodeSMPTE :: Core.Maybe Types.EndTimecodeSMPTE
    -- ^ The frame-accurate SMPTE timecode, from the start of a video, for the end of a detected segment. @EndTimecode@ is in /HH:MM:SS:fr/ format (and /;fr/ for drop frame-rates).
  , endTimestampMillis :: Core.Maybe Core.Integer
    -- ^ The end time of the detected segment, in milliseconds, from the start of the video. This value is rounded down.
  , shotSegment :: Core.Maybe Types.ShotSegment
    -- ^ If the segment is a shot detection, contains information about the shot detection.
  , startTimecodeSMPTE :: Core.Maybe Types.StartTimecodeSMPTE
    -- ^ The frame-accurate SMPTE timecode, from the start of a video, for the start of a detected segment. @StartTimecode@ is in /HH:MM:SS:fr/ format (and /;fr/ for drop frame-rates). 
  , startTimestampMillis :: Core.Maybe Core.Integer
    -- ^ The start time of the detected segment in milliseconds from the start of the video. This value is rounded down. For example, if the actual timestamp is 100.6667 milliseconds, Amazon Rekognition Video returns a value of 100 millis.
  , technicalCueSegment :: Core.Maybe Types.TechnicalCueSegment
    -- ^ If the segment is a technical cue, contains information about the technical cue.
  , type' :: Core.Maybe Types.SegmentType
    -- ^ The type of the segment. Valid values are @TECHNICAL_CUE@ and @SHOT@ .
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'SegmentDetection' value with any optional fields omitted.
mkSegmentDetection
    :: SegmentDetection
mkSegmentDetection
  = SegmentDetection'{durationMillis = Core.Nothing,
                      durationSMPTE = Core.Nothing, endTimecodeSMPTE = Core.Nothing,
                      endTimestampMillis = Core.Nothing, shotSegment = Core.Nothing,
                      startTimecodeSMPTE = Core.Nothing,
                      startTimestampMillis = Core.Nothing,
                      technicalCueSegment = Core.Nothing, type' = Core.Nothing}

-- | The duration of the detected segment in milliseconds. 
--
-- /Note:/ Consider using 'durationMillis' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdDurationMillis :: Lens.Lens' SegmentDetection (Core.Maybe Core.Natural)
sdDurationMillis = Lens.field @"durationMillis"
{-# INLINEABLE sdDurationMillis #-}
{-# DEPRECATED durationMillis "Use generic-lens or generic-optics with 'durationMillis' instead"  #-}

-- | The duration of the timecode for the detected segment in SMPTE format.
--
-- /Note:/ Consider using 'durationSMPTE' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdDurationSMPTE :: Lens.Lens' SegmentDetection (Core.Maybe Types.DurationSMPTE)
sdDurationSMPTE = Lens.field @"durationSMPTE"
{-# INLINEABLE sdDurationSMPTE #-}
{-# DEPRECATED durationSMPTE "Use generic-lens or generic-optics with 'durationSMPTE' instead"  #-}

-- | The frame-accurate SMPTE timecode, from the start of a video, for the end of a detected segment. @EndTimecode@ is in /HH:MM:SS:fr/ format (and /;fr/ for drop frame-rates).
--
-- /Note:/ Consider using 'endTimecodeSMPTE' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdEndTimecodeSMPTE :: Lens.Lens' SegmentDetection (Core.Maybe Types.EndTimecodeSMPTE)
sdEndTimecodeSMPTE = Lens.field @"endTimecodeSMPTE"
{-# INLINEABLE sdEndTimecodeSMPTE #-}
{-# DEPRECATED endTimecodeSMPTE "Use generic-lens or generic-optics with 'endTimecodeSMPTE' instead"  #-}

-- | The end time of the detected segment, in milliseconds, from the start of the video. This value is rounded down.
--
-- /Note:/ Consider using 'endTimestampMillis' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdEndTimestampMillis :: Lens.Lens' SegmentDetection (Core.Maybe Core.Integer)
sdEndTimestampMillis = Lens.field @"endTimestampMillis"
{-# INLINEABLE sdEndTimestampMillis #-}
{-# DEPRECATED endTimestampMillis "Use generic-lens or generic-optics with 'endTimestampMillis' instead"  #-}

-- | If the segment is a shot detection, contains information about the shot detection.
--
-- /Note:/ Consider using 'shotSegment' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdShotSegment :: Lens.Lens' SegmentDetection (Core.Maybe Types.ShotSegment)
sdShotSegment = Lens.field @"shotSegment"
{-# INLINEABLE sdShotSegment #-}
{-# DEPRECATED shotSegment "Use generic-lens or generic-optics with 'shotSegment' instead"  #-}

-- | The frame-accurate SMPTE timecode, from the start of a video, for the start of a detected segment. @StartTimecode@ is in /HH:MM:SS:fr/ format (and /;fr/ for drop frame-rates). 
--
-- /Note:/ Consider using 'startTimecodeSMPTE' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdStartTimecodeSMPTE :: Lens.Lens' SegmentDetection (Core.Maybe Types.StartTimecodeSMPTE)
sdStartTimecodeSMPTE = Lens.field @"startTimecodeSMPTE"
{-# INLINEABLE sdStartTimecodeSMPTE #-}
{-# DEPRECATED startTimecodeSMPTE "Use generic-lens or generic-optics with 'startTimecodeSMPTE' instead"  #-}

-- | The start time of the detected segment in milliseconds from the start of the video. This value is rounded down. For example, if the actual timestamp is 100.6667 milliseconds, Amazon Rekognition Video returns a value of 100 millis.
--
-- /Note:/ Consider using 'startTimestampMillis' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdStartTimestampMillis :: Lens.Lens' SegmentDetection (Core.Maybe Core.Integer)
sdStartTimestampMillis = Lens.field @"startTimestampMillis"
{-# INLINEABLE sdStartTimestampMillis #-}
{-# DEPRECATED startTimestampMillis "Use generic-lens or generic-optics with 'startTimestampMillis' instead"  #-}

-- | If the segment is a technical cue, contains information about the technical cue.
--
-- /Note:/ Consider using 'technicalCueSegment' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdTechnicalCueSegment :: Lens.Lens' SegmentDetection (Core.Maybe Types.TechnicalCueSegment)
sdTechnicalCueSegment = Lens.field @"technicalCueSegment"
{-# INLINEABLE sdTechnicalCueSegment #-}
{-# DEPRECATED technicalCueSegment "Use generic-lens or generic-optics with 'technicalCueSegment' instead"  #-}

-- | The type of the segment. Valid values are @TECHNICAL_CUE@ and @SHOT@ .
--
-- /Note:/ Consider using 'type'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdType :: Lens.Lens' SegmentDetection (Core.Maybe Types.SegmentType)
sdType = Lens.field @"type'"
{-# INLINEABLE sdType #-}
{-# DEPRECATED type' "Use generic-lens or generic-optics with 'type'' instead"  #-}

instance Core.FromJSON SegmentDetection where
        parseJSON
          = Core.withObject "SegmentDetection" Core.$
              \ x ->
                SegmentDetection' Core.<$>
                  (x Core..:? "DurationMillis") Core.<*> x Core..:? "DurationSMPTE"
                    Core.<*> x Core..:? "EndTimecodeSMPTE"
                    Core.<*> x Core..:? "EndTimestampMillis"
                    Core.<*> x Core..:? "ShotSegment"
                    Core.<*> x Core..:? "StartTimecodeSMPTE"
                    Core.<*> x Core..:? "StartTimestampMillis"
                    Core.<*> x Core..:? "TechnicalCueSegment"
                    Core.<*> x Core..:? "Type"
