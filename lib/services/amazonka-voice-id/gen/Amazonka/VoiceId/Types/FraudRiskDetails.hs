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
-- Module      : Amazonka.VoiceId.Types.FraudRiskDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.VoiceId.Types.FraudRiskDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.VoiceId.Types.KnownFraudsterRisk

-- | Details regarding various fraud risk analyses performed against the
-- current session state and streamed audio of the speaker.
--
-- /See:/ 'newFraudRiskDetails' smart constructor.
data FraudRiskDetails = FraudRiskDetails'
  { -- | The details resulting from \'Known Fraudster Risk\' analysis of the
    -- speaker.
    knownFraudsterRisk :: KnownFraudsterRisk
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FraudRiskDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'knownFraudsterRisk', 'fraudRiskDetails_knownFraudsterRisk' - The details resulting from \'Known Fraudster Risk\' analysis of the
-- speaker.
newFraudRiskDetails ::
  -- | 'knownFraudsterRisk'
  KnownFraudsterRisk ->
  FraudRiskDetails
newFraudRiskDetails pKnownFraudsterRisk_ =
  FraudRiskDetails'
    { knownFraudsterRisk =
        pKnownFraudsterRisk_
    }

-- | The details resulting from \'Known Fraudster Risk\' analysis of the
-- speaker.
fraudRiskDetails_knownFraudsterRisk :: Lens.Lens' FraudRiskDetails KnownFraudsterRisk
fraudRiskDetails_knownFraudsterRisk = Lens.lens (\FraudRiskDetails' {knownFraudsterRisk} -> knownFraudsterRisk) (\s@FraudRiskDetails' {} a -> s {knownFraudsterRisk = a} :: FraudRiskDetails)

instance Core.FromJSON FraudRiskDetails where
  parseJSON =
    Core.withObject
      "FraudRiskDetails"
      ( \x ->
          FraudRiskDetails'
            Prelude.<$> (x Core..: "KnownFraudsterRisk")
      )

instance Prelude.Hashable FraudRiskDetails where
  hashWithSalt _salt FraudRiskDetails' {..} =
    _salt `Prelude.hashWithSalt` knownFraudsterRisk

instance Prelude.NFData FraudRiskDetails where
  rnf FraudRiskDetails' {..} =
    Prelude.rnf knownFraudsterRisk
