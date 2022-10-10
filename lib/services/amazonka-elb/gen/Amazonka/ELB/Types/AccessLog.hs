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
-- Module      : Amazonka.ELB.Types.AccessLog
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ELB.Types.AccessLog where

import qualified Amazonka.Core as Core
import Amazonka.ELB.Internal
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about the @AccessLog@ attribute.
--
-- /See:/ 'newAccessLog' smart constructor.
data AccessLog = AccessLog'
  { -- | The logical hierarchy you created for your Amazon S3 bucket, for example
    -- @my-bucket-prefix\/prod@. If the prefix is not provided, the log is
    -- placed at the root level of the bucket.
    s3BucketPrefix :: Prelude.Maybe Prelude.Text,
    -- | The name of the Amazon S3 bucket where the access logs are stored.
    s3BucketName :: Prelude.Maybe Prelude.Text,
    -- | The interval for publishing the access logs. You can specify an interval
    -- of either 5 minutes or 60 minutes.
    --
    -- Default: 60 minutes
    emitInterval :: Prelude.Maybe Prelude.Int,
    -- | Specifies whether access logs are enabled for the load balancer.
    enabled :: Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AccessLog' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3BucketPrefix', 'accessLog_s3BucketPrefix' - The logical hierarchy you created for your Amazon S3 bucket, for example
-- @my-bucket-prefix\/prod@. If the prefix is not provided, the log is
-- placed at the root level of the bucket.
--
-- 's3BucketName', 'accessLog_s3BucketName' - The name of the Amazon S3 bucket where the access logs are stored.
--
-- 'emitInterval', 'accessLog_emitInterval' - The interval for publishing the access logs. You can specify an interval
-- of either 5 minutes or 60 minutes.
--
-- Default: 60 minutes
--
-- 'enabled', 'accessLog_enabled' - Specifies whether access logs are enabled for the load balancer.
newAccessLog ::
  -- | 'enabled'
  Prelude.Bool ->
  AccessLog
newAccessLog pEnabled_ =
  AccessLog'
    { s3BucketPrefix = Prelude.Nothing,
      s3BucketName = Prelude.Nothing,
      emitInterval = Prelude.Nothing,
      enabled = pEnabled_
    }

-- | The logical hierarchy you created for your Amazon S3 bucket, for example
-- @my-bucket-prefix\/prod@. If the prefix is not provided, the log is
-- placed at the root level of the bucket.
accessLog_s3BucketPrefix :: Lens.Lens' AccessLog (Prelude.Maybe Prelude.Text)
accessLog_s3BucketPrefix = Lens.lens (\AccessLog' {s3BucketPrefix} -> s3BucketPrefix) (\s@AccessLog' {} a -> s {s3BucketPrefix = a} :: AccessLog)

-- | The name of the Amazon S3 bucket where the access logs are stored.
accessLog_s3BucketName :: Lens.Lens' AccessLog (Prelude.Maybe Prelude.Text)
accessLog_s3BucketName = Lens.lens (\AccessLog' {s3BucketName} -> s3BucketName) (\s@AccessLog' {} a -> s {s3BucketName = a} :: AccessLog)

-- | The interval for publishing the access logs. You can specify an interval
-- of either 5 minutes or 60 minutes.
--
-- Default: 60 minutes
accessLog_emitInterval :: Lens.Lens' AccessLog (Prelude.Maybe Prelude.Int)
accessLog_emitInterval = Lens.lens (\AccessLog' {emitInterval} -> emitInterval) (\s@AccessLog' {} a -> s {emitInterval = a} :: AccessLog)

-- | Specifies whether access logs are enabled for the load balancer.
accessLog_enabled :: Lens.Lens' AccessLog Prelude.Bool
accessLog_enabled = Lens.lens (\AccessLog' {enabled} -> enabled) (\s@AccessLog' {} a -> s {enabled = a} :: AccessLog)

instance Core.FromXML AccessLog where
  parseXML x =
    AccessLog'
      Prelude.<$> (x Core..@? "S3BucketPrefix")
      Prelude.<*> (x Core..@? "S3BucketName")
      Prelude.<*> (x Core..@? "EmitInterval")
      Prelude.<*> (x Core..@ "Enabled")

instance Prelude.Hashable AccessLog where
  hashWithSalt _salt AccessLog' {..} =
    _salt `Prelude.hashWithSalt` s3BucketPrefix
      `Prelude.hashWithSalt` s3BucketName
      `Prelude.hashWithSalt` emitInterval
      `Prelude.hashWithSalt` enabled

instance Prelude.NFData AccessLog where
  rnf AccessLog' {..} =
    Prelude.rnf s3BucketPrefix
      `Prelude.seq` Prelude.rnf s3BucketName
      `Prelude.seq` Prelude.rnf emitInterval
      `Prelude.seq` Prelude.rnf enabled

instance Core.ToQuery AccessLog where
  toQuery AccessLog' {..} =
    Prelude.mconcat
      [ "S3BucketPrefix" Core.=: s3BucketPrefix,
        "S3BucketName" Core.=: s3BucketName,
        "EmitInterval" Core.=: emitInterval,
        "Enabled" Core.=: enabled
      ]
