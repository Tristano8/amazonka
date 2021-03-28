{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264EntropyEncoding
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.H264EntropyEncoding
  ( H264EntropyEncoding
    ( H264EntropyEncoding'
    , H264EntropyEncodingCabac
    , H264EntropyEncodingCavlc
    , fromH264EntropyEncoding
    )
  ) where

import qualified Network.AWS.Prelude as Core

-- | Entropy encoding mode. Use CABAC (must be in Main or High profile) or CAVLC.
newtype H264EntropyEncoding = H264EntropyEncoding'{fromH264EntropyEncoding
                                                   :: Core.Text}
                                deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show,
                                                Core.Generic)
                                deriving newtype (Core.IsString, Core.Hashable, Core.NFData,
                                                  Core.ToJSONKey, Core.FromJSONKey, Core.ToJSON,
                                                  Core.FromJSON, Core.ToXML, Core.FromXML,
                                                  Core.ToText, Core.FromText, Core.ToByteString,
                                                  Core.ToQuery, Core.ToHeader)

pattern H264EntropyEncodingCabac :: H264EntropyEncoding
pattern H264EntropyEncodingCabac = H264EntropyEncoding' "CABAC"

pattern H264EntropyEncodingCavlc :: H264EntropyEncoding
pattern H264EntropyEncodingCavlc = H264EntropyEncoding' "CAVLC"

{-# COMPLETE 
  H264EntropyEncodingCabac,

  H264EntropyEncodingCavlc,
  H264EntropyEncoding'
  #-}
