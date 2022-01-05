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
-- Module      : Amazonka.DynamoDB.Types.LocalSecondaryIndexInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DynamoDB.Types.LocalSecondaryIndexInfo where

import qualified Amazonka.Core as Core
import Amazonka.DynamoDB.Internal
import Amazonka.DynamoDB.Types.KeySchemaElement
import Amazonka.DynamoDB.Types.Projection
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Represents the properties of a local secondary index for the table when
-- the backup was created.
--
-- /See:/ 'newLocalSecondaryIndexInfo' smart constructor.
data LocalSecondaryIndexInfo = LocalSecondaryIndexInfo'
  { -- | The complete key schema for a local secondary index, which consists of
    -- one or more pairs of attribute names and key types:
    --
    -- -   @HASH@ - partition key
    --
    -- -   @RANGE@ - sort key
    --
    -- The partition key of an item is also known as its /hash attribute/. The
    -- term \"hash attribute\" derives from DynamoDB\'s usage of an internal
    -- hash function to evenly distribute data items across partitions, based
    -- on their partition key values.
    --
    -- The sort key of an item is also known as its /range attribute/. The term
    -- \"range attribute\" derives from the way DynamoDB stores items with the
    -- same partition key physically close together, in sorted order by the
    -- sort key value.
    keySchema :: Prelude.Maybe (Prelude.NonEmpty KeySchemaElement),
    -- | Represents attributes that are copied (projected) from the table into
    -- the global secondary index. These are in addition to the primary key
    -- attributes and index key attributes, which are automatically projected.
    projection :: Prelude.Maybe Projection,
    -- | Represents the name of the local secondary index.
    indexName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LocalSecondaryIndexInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'keySchema', 'localSecondaryIndexInfo_keySchema' - The complete key schema for a local secondary index, which consists of
-- one or more pairs of attribute names and key types:
--
-- -   @HASH@ - partition key
--
-- -   @RANGE@ - sort key
--
-- The partition key of an item is also known as its /hash attribute/. The
-- term \"hash attribute\" derives from DynamoDB\'s usage of an internal
-- hash function to evenly distribute data items across partitions, based
-- on their partition key values.
--
-- The sort key of an item is also known as its /range attribute/. The term
-- \"range attribute\" derives from the way DynamoDB stores items with the
-- same partition key physically close together, in sorted order by the
-- sort key value.
--
-- 'projection', 'localSecondaryIndexInfo_projection' - Represents attributes that are copied (projected) from the table into
-- the global secondary index. These are in addition to the primary key
-- attributes and index key attributes, which are automatically projected.
--
-- 'indexName', 'localSecondaryIndexInfo_indexName' - Represents the name of the local secondary index.
newLocalSecondaryIndexInfo ::
  LocalSecondaryIndexInfo
newLocalSecondaryIndexInfo =
  LocalSecondaryIndexInfo'
    { keySchema =
        Prelude.Nothing,
      projection = Prelude.Nothing,
      indexName = Prelude.Nothing
    }

-- | The complete key schema for a local secondary index, which consists of
-- one or more pairs of attribute names and key types:
--
-- -   @HASH@ - partition key
--
-- -   @RANGE@ - sort key
--
-- The partition key of an item is also known as its /hash attribute/. The
-- term \"hash attribute\" derives from DynamoDB\'s usage of an internal
-- hash function to evenly distribute data items across partitions, based
-- on their partition key values.
--
-- The sort key of an item is also known as its /range attribute/. The term
-- \"range attribute\" derives from the way DynamoDB stores items with the
-- same partition key physically close together, in sorted order by the
-- sort key value.
localSecondaryIndexInfo_keySchema :: Lens.Lens' LocalSecondaryIndexInfo (Prelude.Maybe (Prelude.NonEmpty KeySchemaElement))
localSecondaryIndexInfo_keySchema = Lens.lens (\LocalSecondaryIndexInfo' {keySchema} -> keySchema) (\s@LocalSecondaryIndexInfo' {} a -> s {keySchema = a} :: LocalSecondaryIndexInfo) Prelude.. Lens.mapping Lens.coerced

-- | Represents attributes that are copied (projected) from the table into
-- the global secondary index. These are in addition to the primary key
-- attributes and index key attributes, which are automatically projected.
localSecondaryIndexInfo_projection :: Lens.Lens' LocalSecondaryIndexInfo (Prelude.Maybe Projection)
localSecondaryIndexInfo_projection = Lens.lens (\LocalSecondaryIndexInfo' {projection} -> projection) (\s@LocalSecondaryIndexInfo' {} a -> s {projection = a} :: LocalSecondaryIndexInfo)

-- | Represents the name of the local secondary index.
localSecondaryIndexInfo_indexName :: Lens.Lens' LocalSecondaryIndexInfo (Prelude.Maybe Prelude.Text)
localSecondaryIndexInfo_indexName = Lens.lens (\LocalSecondaryIndexInfo' {indexName} -> indexName) (\s@LocalSecondaryIndexInfo' {} a -> s {indexName = a} :: LocalSecondaryIndexInfo)

instance Core.FromJSON LocalSecondaryIndexInfo where
  parseJSON =
    Core.withObject
      "LocalSecondaryIndexInfo"
      ( \x ->
          LocalSecondaryIndexInfo'
            Prelude.<$> (x Core..:? "KeySchema")
            Prelude.<*> (x Core..:? "Projection")
            Prelude.<*> (x Core..:? "IndexName")
      )

instance Prelude.Hashable LocalSecondaryIndexInfo where
  hashWithSalt _salt LocalSecondaryIndexInfo' {..} =
    _salt `Prelude.hashWithSalt` keySchema
      `Prelude.hashWithSalt` projection
      `Prelude.hashWithSalt` indexName

instance Prelude.NFData LocalSecondaryIndexInfo where
  rnf LocalSecondaryIndexInfo' {..} =
    Prelude.rnf keySchema
      `Prelude.seq` Prelude.rnf projection
      `Prelude.seq` Prelude.rnf indexName
