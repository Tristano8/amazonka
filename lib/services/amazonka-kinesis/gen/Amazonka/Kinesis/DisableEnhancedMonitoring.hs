{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Kinesis.DisableEnhancedMonitoring
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables enhanced monitoring.
module Amazonka.Kinesis.DisableEnhancedMonitoring
  ( -- * Creating a Request
    DisableEnhancedMonitoring (..),
    newDisableEnhancedMonitoring,

    -- * Request Lenses
    disableEnhancedMonitoring_streamName,
    disableEnhancedMonitoring_shardLevelMetrics,

    -- * Destructuring the Response
    EnhancedMonitoringOutput (..),
    newEnhancedMonitoringOutput,

    -- * Response Lenses
    enhancedMonitoringOutput_desiredShardLevelMetrics,
    enhancedMonitoringOutput_currentShardLevelMetrics,
    enhancedMonitoringOutput_streamName,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Kinesis.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Represents the input for DisableEnhancedMonitoring.
--
-- /See:/ 'newDisableEnhancedMonitoring' smart constructor.
data DisableEnhancedMonitoring = DisableEnhancedMonitoring'
  { -- | The name of the Kinesis data stream for which to disable enhanced
    -- monitoring.
    streamName :: Prelude.Text,
    -- | List of shard-level metrics to disable.
    --
    -- The following are the valid shard-level metrics. The value \"@ALL@\"
    -- disables every metric.
    --
    -- -   @IncomingBytes@
    --
    -- -   @IncomingRecords@
    --
    -- -   @OutgoingBytes@
    --
    -- -   @OutgoingRecords@
    --
    -- -   @WriteProvisionedThroughputExceeded@
    --
    -- -   @ReadProvisionedThroughputExceeded@
    --
    -- -   @IteratorAgeMilliseconds@
    --
    -- -   @ALL@
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html Monitoring the Amazon Kinesis Data Streams Service with Amazon CloudWatch>
    -- in the /Amazon Kinesis Data Streams Developer Guide/.
    shardLevelMetrics :: [MetricsName]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisableEnhancedMonitoring' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'streamName', 'disableEnhancedMonitoring_streamName' - The name of the Kinesis data stream for which to disable enhanced
-- monitoring.
--
-- 'shardLevelMetrics', 'disableEnhancedMonitoring_shardLevelMetrics' - List of shard-level metrics to disable.
--
-- The following are the valid shard-level metrics. The value \"@ALL@\"
-- disables every metric.
--
-- -   @IncomingBytes@
--
-- -   @IncomingRecords@
--
-- -   @OutgoingBytes@
--
-- -   @OutgoingRecords@
--
-- -   @WriteProvisionedThroughputExceeded@
--
-- -   @ReadProvisionedThroughputExceeded@
--
-- -   @IteratorAgeMilliseconds@
--
-- -   @ALL@
--
-- For more information, see
-- <https://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html Monitoring the Amazon Kinesis Data Streams Service with Amazon CloudWatch>
-- in the /Amazon Kinesis Data Streams Developer Guide/.
newDisableEnhancedMonitoring ::
  -- | 'streamName'
  Prelude.Text ->
  DisableEnhancedMonitoring
newDisableEnhancedMonitoring pStreamName_ =
  DisableEnhancedMonitoring'
    { streamName =
        pStreamName_,
      shardLevelMetrics = Prelude.mempty
    }

-- | The name of the Kinesis data stream for which to disable enhanced
-- monitoring.
disableEnhancedMonitoring_streamName :: Lens.Lens' DisableEnhancedMonitoring Prelude.Text
disableEnhancedMonitoring_streamName = Lens.lens (\DisableEnhancedMonitoring' {streamName} -> streamName) (\s@DisableEnhancedMonitoring' {} a -> s {streamName = a} :: DisableEnhancedMonitoring)

-- | List of shard-level metrics to disable.
--
-- The following are the valid shard-level metrics. The value \"@ALL@\"
-- disables every metric.
--
-- -   @IncomingBytes@
--
-- -   @IncomingRecords@
--
-- -   @OutgoingBytes@
--
-- -   @OutgoingRecords@
--
-- -   @WriteProvisionedThroughputExceeded@
--
-- -   @ReadProvisionedThroughputExceeded@
--
-- -   @IteratorAgeMilliseconds@
--
-- -   @ALL@
--
-- For more information, see
-- <https://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html Monitoring the Amazon Kinesis Data Streams Service with Amazon CloudWatch>
-- in the /Amazon Kinesis Data Streams Developer Guide/.
disableEnhancedMonitoring_shardLevelMetrics :: Lens.Lens' DisableEnhancedMonitoring [MetricsName]
disableEnhancedMonitoring_shardLevelMetrics = Lens.lens (\DisableEnhancedMonitoring' {shardLevelMetrics} -> shardLevelMetrics) (\s@DisableEnhancedMonitoring' {} a -> s {shardLevelMetrics = a} :: DisableEnhancedMonitoring) Prelude.. Lens.coerced

instance Core.AWSRequest DisableEnhancedMonitoring where
  type
    AWSResponse DisableEnhancedMonitoring =
      EnhancedMonitoringOutput
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Prelude.Hashable DisableEnhancedMonitoring where
  hashWithSalt _salt DisableEnhancedMonitoring' {..} =
    _salt `Prelude.hashWithSalt` streamName
      `Prelude.hashWithSalt` shardLevelMetrics

instance Prelude.NFData DisableEnhancedMonitoring where
  rnf DisableEnhancedMonitoring' {..} =
    Prelude.rnf streamName
      `Prelude.seq` Prelude.rnf shardLevelMetrics

instance Core.ToHeaders DisableEnhancedMonitoring where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Kinesis_20131202.DisableEnhancedMonitoring" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DisableEnhancedMonitoring where
  toJSON DisableEnhancedMonitoring' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("StreamName" Core..= streamName),
            Prelude.Just
              ("ShardLevelMetrics" Core..= shardLevelMetrics)
          ]
      )

instance Core.ToPath DisableEnhancedMonitoring where
  toPath = Prelude.const "/"

instance Core.ToQuery DisableEnhancedMonitoring where
  toQuery = Prelude.const Prelude.mempty
