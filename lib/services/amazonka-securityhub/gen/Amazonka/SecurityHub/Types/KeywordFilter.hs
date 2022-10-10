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
-- Module      : Amazonka.SecurityHub.Types.KeywordFilter
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SecurityHub.Types.KeywordFilter where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A keyword filter for querying findings.
--
-- /See:/ 'newKeywordFilter' smart constructor.
data KeywordFilter = KeywordFilter'
  { -- | A value for the keyword.
    value :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'KeywordFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'value', 'keywordFilter_value' - A value for the keyword.
newKeywordFilter ::
  KeywordFilter
newKeywordFilter =
  KeywordFilter' {value = Prelude.Nothing}

-- | A value for the keyword.
keywordFilter_value :: Lens.Lens' KeywordFilter (Prelude.Maybe Prelude.Text)
keywordFilter_value = Lens.lens (\KeywordFilter' {value} -> value) (\s@KeywordFilter' {} a -> s {value = a} :: KeywordFilter)

instance Core.FromJSON KeywordFilter where
  parseJSON =
    Core.withObject
      "KeywordFilter"
      ( \x ->
          KeywordFilter' Prelude.<$> (x Core..:? "Value")
      )

instance Prelude.Hashable KeywordFilter where
  hashWithSalt _salt KeywordFilter' {..} =
    _salt `Prelude.hashWithSalt` value

instance Prelude.NFData KeywordFilter where
  rnf KeywordFilter' {..} = Prelude.rnf value

instance Core.ToJSON KeywordFilter where
  toJSON KeywordFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [("Value" Core..=) Prelude.<$> value]
      )
