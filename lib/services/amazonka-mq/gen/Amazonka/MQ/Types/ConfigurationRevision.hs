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
-- Module      : Amazonka.MQ.Types.ConfigurationRevision
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MQ.Types.ConfigurationRevision where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Returns information about the specified configuration revision.
--
-- /See:/ 'newConfigurationRevision' smart constructor.
data ConfigurationRevision = ConfigurationRevision'
  { -- | The description of the configuration revision.
    description :: Prelude.Maybe Prelude.Text,
    -- | Required. The revision number of the configuration.
    revision :: Prelude.Int,
    -- | Required. The date and time of the configuration revision.
    created :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConfigurationRevision' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'description', 'configurationRevision_description' - The description of the configuration revision.
--
-- 'revision', 'configurationRevision_revision' - Required. The revision number of the configuration.
--
-- 'created', 'configurationRevision_created' - Required. The date and time of the configuration revision.
newConfigurationRevision ::
  -- | 'revision'
  Prelude.Int ->
  -- | 'created'
  Prelude.UTCTime ->
  ConfigurationRevision
newConfigurationRevision pRevision_ pCreated_ =
  ConfigurationRevision'
    { description =
        Prelude.Nothing,
      revision = pRevision_,
      created = Core._Time Lens.# pCreated_
    }

-- | The description of the configuration revision.
configurationRevision_description :: Lens.Lens' ConfigurationRevision (Prelude.Maybe Prelude.Text)
configurationRevision_description = Lens.lens (\ConfigurationRevision' {description} -> description) (\s@ConfigurationRevision' {} a -> s {description = a} :: ConfigurationRevision)

-- | Required. The revision number of the configuration.
configurationRevision_revision :: Lens.Lens' ConfigurationRevision Prelude.Int
configurationRevision_revision = Lens.lens (\ConfigurationRevision' {revision} -> revision) (\s@ConfigurationRevision' {} a -> s {revision = a} :: ConfigurationRevision)

-- | Required. The date and time of the configuration revision.
configurationRevision_created :: Lens.Lens' ConfigurationRevision Prelude.UTCTime
configurationRevision_created = Lens.lens (\ConfigurationRevision' {created} -> created) (\s@ConfigurationRevision' {} a -> s {created = a} :: ConfigurationRevision) Prelude.. Core._Time

instance Core.FromJSON ConfigurationRevision where
  parseJSON =
    Core.withObject
      "ConfigurationRevision"
      ( \x ->
          ConfigurationRevision'
            Prelude.<$> (x Core..:? "description")
            Prelude.<*> (x Core..: "revision")
            Prelude.<*> (x Core..: "created")
      )

instance Prelude.Hashable ConfigurationRevision where
  hashWithSalt salt' ConfigurationRevision' {..} =
    salt' `Prelude.hashWithSalt` created
      `Prelude.hashWithSalt` revision
      `Prelude.hashWithSalt` description

instance Prelude.NFData ConfigurationRevision where
  rnf ConfigurationRevision' {..} =
    Prelude.rnf description
      `Prelude.seq` Prelude.rnf created
      `Prelude.seq` Prelude.rnf revision
