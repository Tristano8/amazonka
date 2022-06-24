{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.MediaPackage.Types.CmafPackageCreateOrUpdateParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaPackage.Types.CmafPackageCreateOrUpdateParameters where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaPackage.Types.CmafEncryption
import Amazonka.MediaPackage.Types.HlsManifestCreateOrUpdateParameters
import Amazonka.MediaPackage.Types.StreamSelection
import qualified Amazonka.Prelude as Prelude

-- | A Common Media Application Format (CMAF) packaging configuration.
--
-- /See:/ 'newCmafPackageCreateOrUpdateParameters' smart constructor.
data CmafPackageCreateOrUpdateParameters = CmafPackageCreateOrUpdateParameters'
  { streamSelection :: Prelude.Maybe StreamSelection,
    -- | A list of HLS manifest configurations
    hlsManifests :: Prelude.Maybe [HlsManifestCreateOrUpdateParameters],
    -- | An optional custom string that is prepended to the name of each segment.
    -- If not specified, it defaults to the ChannelId.
    segmentPrefix :: Prelude.Maybe Prelude.Text,
    -- | Duration (in seconds) of each segment. Actual segments will be rounded
    -- to the nearest multiple of the source segment duration.
    segmentDurationSeconds :: Prelude.Maybe Prelude.Int,
    encryption :: Prelude.Maybe CmafEncryption
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CmafPackageCreateOrUpdateParameters' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'streamSelection', 'cmafPackageCreateOrUpdateParameters_streamSelection' - Undocumented member.
--
-- 'hlsManifests', 'cmafPackageCreateOrUpdateParameters_hlsManifests' - A list of HLS manifest configurations
--
-- 'segmentPrefix', 'cmafPackageCreateOrUpdateParameters_segmentPrefix' - An optional custom string that is prepended to the name of each segment.
-- If not specified, it defaults to the ChannelId.
--
-- 'segmentDurationSeconds', 'cmafPackageCreateOrUpdateParameters_segmentDurationSeconds' - Duration (in seconds) of each segment. Actual segments will be rounded
-- to the nearest multiple of the source segment duration.
--
-- 'encryption', 'cmafPackageCreateOrUpdateParameters_encryption' - Undocumented member.
newCmafPackageCreateOrUpdateParameters ::
  CmafPackageCreateOrUpdateParameters
newCmafPackageCreateOrUpdateParameters =
  CmafPackageCreateOrUpdateParameters'
    { streamSelection =
        Prelude.Nothing,
      hlsManifests = Prelude.Nothing,
      segmentPrefix = Prelude.Nothing,
      segmentDurationSeconds =
        Prelude.Nothing,
      encryption = Prelude.Nothing
    }

-- | Undocumented member.
cmafPackageCreateOrUpdateParameters_streamSelection :: Lens.Lens' CmafPackageCreateOrUpdateParameters (Prelude.Maybe StreamSelection)
cmafPackageCreateOrUpdateParameters_streamSelection = Lens.lens (\CmafPackageCreateOrUpdateParameters' {streamSelection} -> streamSelection) (\s@CmafPackageCreateOrUpdateParameters' {} a -> s {streamSelection = a} :: CmafPackageCreateOrUpdateParameters)

-- | A list of HLS manifest configurations
cmafPackageCreateOrUpdateParameters_hlsManifests :: Lens.Lens' CmafPackageCreateOrUpdateParameters (Prelude.Maybe [HlsManifestCreateOrUpdateParameters])
cmafPackageCreateOrUpdateParameters_hlsManifests = Lens.lens (\CmafPackageCreateOrUpdateParameters' {hlsManifests} -> hlsManifests) (\s@CmafPackageCreateOrUpdateParameters' {} a -> s {hlsManifests = a} :: CmafPackageCreateOrUpdateParameters) Prelude.. Lens.mapping Lens.coerced

-- | An optional custom string that is prepended to the name of each segment.
-- If not specified, it defaults to the ChannelId.
cmafPackageCreateOrUpdateParameters_segmentPrefix :: Lens.Lens' CmafPackageCreateOrUpdateParameters (Prelude.Maybe Prelude.Text)
cmafPackageCreateOrUpdateParameters_segmentPrefix = Lens.lens (\CmafPackageCreateOrUpdateParameters' {segmentPrefix} -> segmentPrefix) (\s@CmafPackageCreateOrUpdateParameters' {} a -> s {segmentPrefix = a} :: CmafPackageCreateOrUpdateParameters)

-- | Duration (in seconds) of each segment. Actual segments will be rounded
-- to the nearest multiple of the source segment duration.
cmafPackageCreateOrUpdateParameters_segmentDurationSeconds :: Lens.Lens' CmafPackageCreateOrUpdateParameters (Prelude.Maybe Prelude.Int)
cmafPackageCreateOrUpdateParameters_segmentDurationSeconds = Lens.lens (\CmafPackageCreateOrUpdateParameters' {segmentDurationSeconds} -> segmentDurationSeconds) (\s@CmafPackageCreateOrUpdateParameters' {} a -> s {segmentDurationSeconds = a} :: CmafPackageCreateOrUpdateParameters)

-- | Undocumented member.
cmafPackageCreateOrUpdateParameters_encryption :: Lens.Lens' CmafPackageCreateOrUpdateParameters (Prelude.Maybe CmafEncryption)
cmafPackageCreateOrUpdateParameters_encryption = Lens.lens (\CmafPackageCreateOrUpdateParameters' {encryption} -> encryption) (\s@CmafPackageCreateOrUpdateParameters' {} a -> s {encryption = a} :: CmafPackageCreateOrUpdateParameters)

instance
  Prelude.Hashable
    CmafPackageCreateOrUpdateParameters
  where
  hashWithSalt
    _salt
    CmafPackageCreateOrUpdateParameters' {..} =
      _salt `Prelude.hashWithSalt` streamSelection
        `Prelude.hashWithSalt` hlsManifests
        `Prelude.hashWithSalt` segmentPrefix
        `Prelude.hashWithSalt` segmentDurationSeconds
        `Prelude.hashWithSalt` encryption

instance
  Prelude.NFData
    CmafPackageCreateOrUpdateParameters
  where
  rnf CmafPackageCreateOrUpdateParameters' {..} =
    Prelude.rnf streamSelection
      `Prelude.seq` Prelude.rnf hlsManifests
      `Prelude.seq` Prelude.rnf segmentPrefix
      `Prelude.seq` Prelude.rnf segmentDurationSeconds
      `Prelude.seq` Prelude.rnf encryption

instance
  Core.ToJSON
    CmafPackageCreateOrUpdateParameters
  where
  toJSON CmafPackageCreateOrUpdateParameters' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("streamSelection" Core..=)
              Prelude.<$> streamSelection,
            ("hlsManifests" Core..=) Prelude.<$> hlsManifests,
            ("segmentPrefix" Core..=) Prelude.<$> segmentPrefix,
            ("segmentDurationSeconds" Core..=)
              Prelude.<$> segmentDurationSeconds,
            ("encryption" Core..=) Prelude.<$> encryption
          ]
      )
