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
-- Module      : Amazonka.DynamoDB.Types.Capacity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DynamoDB.Types.Capacity where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Represents the amount of provisioned throughput capacity consumed on a
-- table or an index.
--
-- /See:/ 'newCapacity' smart constructor.
data Capacity = Capacity'
  { -- | The total number of read capacity units consumed on a table or an index.
    readCapacityUnits :: Prelude.Maybe Prelude.Double,
    -- | The total number of capacity units consumed on a table or an index.
    capacityUnits :: Prelude.Maybe Prelude.Double,
    -- | The total number of write capacity units consumed on a table or an
    -- index.
    writeCapacityUnits :: Prelude.Maybe Prelude.Double
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Capacity' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'readCapacityUnits', 'capacity_readCapacityUnits' - The total number of read capacity units consumed on a table or an index.
--
-- 'capacityUnits', 'capacity_capacityUnits' - The total number of capacity units consumed on a table or an index.
--
-- 'writeCapacityUnits', 'capacity_writeCapacityUnits' - The total number of write capacity units consumed on a table or an
-- index.
newCapacity ::
  Capacity
newCapacity =
  Capacity'
    { readCapacityUnits = Prelude.Nothing,
      capacityUnits = Prelude.Nothing,
      writeCapacityUnits = Prelude.Nothing
    }

-- | The total number of read capacity units consumed on a table or an index.
capacity_readCapacityUnits :: Lens.Lens' Capacity (Prelude.Maybe Prelude.Double)
capacity_readCapacityUnits = Lens.lens (\Capacity' {readCapacityUnits} -> readCapacityUnits) (\s@Capacity' {} a -> s {readCapacityUnits = a} :: Capacity)

-- | The total number of capacity units consumed on a table or an index.
capacity_capacityUnits :: Lens.Lens' Capacity (Prelude.Maybe Prelude.Double)
capacity_capacityUnits = Lens.lens (\Capacity' {capacityUnits} -> capacityUnits) (\s@Capacity' {} a -> s {capacityUnits = a} :: Capacity)

-- | The total number of write capacity units consumed on a table or an
-- index.
capacity_writeCapacityUnits :: Lens.Lens' Capacity (Prelude.Maybe Prelude.Double)
capacity_writeCapacityUnits = Lens.lens (\Capacity' {writeCapacityUnits} -> writeCapacityUnits) (\s@Capacity' {} a -> s {writeCapacityUnits = a} :: Capacity)

instance Core.FromJSON Capacity where
  parseJSON =
    Core.withObject
      "Capacity"
      ( \x ->
          Capacity'
            Prelude.<$> (x Core..:? "ReadCapacityUnits")
            Prelude.<*> (x Core..:? "CapacityUnits")
            Prelude.<*> (x Core..:? "WriteCapacityUnits")
      )

instance Prelude.Hashable Capacity where
  hashWithSalt salt' Capacity' {..} =
    salt' `Prelude.hashWithSalt` writeCapacityUnits
      `Prelude.hashWithSalt` capacityUnits
      `Prelude.hashWithSalt` readCapacityUnits

instance Prelude.NFData Capacity where
  rnf Capacity' {..} =
    Prelude.rnf readCapacityUnits
      `Prelude.seq` Prelude.rnf writeCapacityUnits
      `Prelude.seq` Prelude.rnf capacityUnits
