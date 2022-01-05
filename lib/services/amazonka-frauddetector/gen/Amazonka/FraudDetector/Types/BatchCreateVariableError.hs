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
-- Module      : Amazonka.FraudDetector.Types.BatchCreateVariableError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.FraudDetector.Types.BatchCreateVariableError where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Provides the error of the batch create variable API.
--
-- /See:/ 'newBatchCreateVariableError' smart constructor.
data BatchCreateVariableError = BatchCreateVariableError'
  { -- | The name.
    name :: Prelude.Maybe Prelude.Text,
    -- | The error code.
    code :: Prelude.Maybe Prelude.Int,
    -- | The error message.
    message :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchCreateVariableError' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'batchCreateVariableError_name' - The name.
--
-- 'code', 'batchCreateVariableError_code' - The error code.
--
-- 'message', 'batchCreateVariableError_message' - The error message.
newBatchCreateVariableError ::
  BatchCreateVariableError
newBatchCreateVariableError =
  BatchCreateVariableError'
    { name = Prelude.Nothing,
      code = Prelude.Nothing,
      message = Prelude.Nothing
    }

-- | The name.
batchCreateVariableError_name :: Lens.Lens' BatchCreateVariableError (Prelude.Maybe Prelude.Text)
batchCreateVariableError_name = Lens.lens (\BatchCreateVariableError' {name} -> name) (\s@BatchCreateVariableError' {} a -> s {name = a} :: BatchCreateVariableError)

-- | The error code.
batchCreateVariableError_code :: Lens.Lens' BatchCreateVariableError (Prelude.Maybe Prelude.Int)
batchCreateVariableError_code = Lens.lens (\BatchCreateVariableError' {code} -> code) (\s@BatchCreateVariableError' {} a -> s {code = a} :: BatchCreateVariableError)

-- | The error message.
batchCreateVariableError_message :: Lens.Lens' BatchCreateVariableError (Prelude.Maybe Prelude.Text)
batchCreateVariableError_message = Lens.lens (\BatchCreateVariableError' {message} -> message) (\s@BatchCreateVariableError' {} a -> s {message = a} :: BatchCreateVariableError)

instance Core.FromJSON BatchCreateVariableError where
  parseJSON =
    Core.withObject
      "BatchCreateVariableError"
      ( \x ->
          BatchCreateVariableError'
            Prelude.<$> (x Core..:? "name")
            Prelude.<*> (x Core..:? "code")
            Prelude.<*> (x Core..:? "message")
      )

instance Prelude.Hashable BatchCreateVariableError where
  hashWithSalt _salt BatchCreateVariableError' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` code
      `Prelude.hashWithSalt` message

instance Prelude.NFData BatchCreateVariableError where
  rnf BatchCreateVariableError' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf code
      `Prelude.seq` Prelude.rnf message
