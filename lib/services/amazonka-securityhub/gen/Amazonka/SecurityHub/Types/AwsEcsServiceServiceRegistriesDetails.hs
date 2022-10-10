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
-- Module      : Amazonka.SecurityHub.Types.AwsEcsServiceServiceRegistriesDetails
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SecurityHub.Types.AwsEcsServiceServiceRegistriesDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about a service discovery registry to assign to the service.
--
-- /See:/ 'newAwsEcsServiceServiceRegistriesDetails' smart constructor.
data AwsEcsServiceServiceRegistriesDetails = AwsEcsServiceServiceRegistriesDetails'
  { -- | The port value to use for a service discovery service that specifies an
    -- SRV record. This field can be used if both the @awsvpc@awsvpc network
    -- mode and SRV records are used.
    port :: Prelude.Maybe Prelude.Int,
    -- | The port value to use for the service discovery service.
    --
    -- If the task definition uses the @bridge@ or @host@ network mode, you
    -- must specify @ContainerName@ and @ContainerPort@.
    --
    -- If the task definition uses the @awsvpc@ network mode and a type SRV DNS
    -- record, you must specify either @ContainerName@ and @ContainerPort@, or
    -- @Port@ , but not both.
    containerPort :: Prelude.Maybe Prelude.Int,
    -- | The container name value to use for the service discovery service.
    --
    -- If the task definition uses the @bridge@ or @host@ network mode, you
    -- must specify @ContainerName@ and @ContainerPort@.
    --
    -- If the task definition uses the @awsvpc@ network mode and a type SRV DNS
    -- record, you must specify either @ContainerName@ and @ContainerPort@, or
    -- @Port@ , but not both.
    containerName :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the service registry.
    registryArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsEcsServiceServiceRegistriesDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'port', 'awsEcsServiceServiceRegistriesDetails_port' - The port value to use for a service discovery service that specifies an
-- SRV record. This field can be used if both the @awsvpc@awsvpc network
-- mode and SRV records are used.
--
-- 'containerPort', 'awsEcsServiceServiceRegistriesDetails_containerPort' - The port value to use for the service discovery service.
--
-- If the task definition uses the @bridge@ or @host@ network mode, you
-- must specify @ContainerName@ and @ContainerPort@.
--
-- If the task definition uses the @awsvpc@ network mode and a type SRV DNS
-- record, you must specify either @ContainerName@ and @ContainerPort@, or
-- @Port@ , but not both.
--
-- 'containerName', 'awsEcsServiceServiceRegistriesDetails_containerName' - The container name value to use for the service discovery service.
--
-- If the task definition uses the @bridge@ or @host@ network mode, you
-- must specify @ContainerName@ and @ContainerPort@.
--
-- If the task definition uses the @awsvpc@ network mode and a type SRV DNS
-- record, you must specify either @ContainerName@ and @ContainerPort@, or
-- @Port@ , but not both.
--
-- 'registryArn', 'awsEcsServiceServiceRegistriesDetails_registryArn' - The ARN of the service registry.
newAwsEcsServiceServiceRegistriesDetails ::
  AwsEcsServiceServiceRegistriesDetails
newAwsEcsServiceServiceRegistriesDetails =
  AwsEcsServiceServiceRegistriesDetails'
    { port =
        Prelude.Nothing,
      containerPort = Prelude.Nothing,
      containerName = Prelude.Nothing,
      registryArn = Prelude.Nothing
    }

-- | The port value to use for a service discovery service that specifies an
-- SRV record. This field can be used if both the @awsvpc@awsvpc network
-- mode and SRV records are used.
awsEcsServiceServiceRegistriesDetails_port :: Lens.Lens' AwsEcsServiceServiceRegistriesDetails (Prelude.Maybe Prelude.Int)
awsEcsServiceServiceRegistriesDetails_port = Lens.lens (\AwsEcsServiceServiceRegistriesDetails' {port} -> port) (\s@AwsEcsServiceServiceRegistriesDetails' {} a -> s {port = a} :: AwsEcsServiceServiceRegistriesDetails)

-- | The port value to use for the service discovery service.
--
-- If the task definition uses the @bridge@ or @host@ network mode, you
-- must specify @ContainerName@ and @ContainerPort@.
--
-- If the task definition uses the @awsvpc@ network mode and a type SRV DNS
-- record, you must specify either @ContainerName@ and @ContainerPort@, or
-- @Port@ , but not both.
awsEcsServiceServiceRegistriesDetails_containerPort :: Lens.Lens' AwsEcsServiceServiceRegistriesDetails (Prelude.Maybe Prelude.Int)
awsEcsServiceServiceRegistriesDetails_containerPort = Lens.lens (\AwsEcsServiceServiceRegistriesDetails' {containerPort} -> containerPort) (\s@AwsEcsServiceServiceRegistriesDetails' {} a -> s {containerPort = a} :: AwsEcsServiceServiceRegistriesDetails)

-- | The container name value to use for the service discovery service.
--
-- If the task definition uses the @bridge@ or @host@ network mode, you
-- must specify @ContainerName@ and @ContainerPort@.
--
-- If the task definition uses the @awsvpc@ network mode and a type SRV DNS
-- record, you must specify either @ContainerName@ and @ContainerPort@, or
-- @Port@ , but not both.
awsEcsServiceServiceRegistriesDetails_containerName :: Lens.Lens' AwsEcsServiceServiceRegistriesDetails (Prelude.Maybe Prelude.Text)
awsEcsServiceServiceRegistriesDetails_containerName = Lens.lens (\AwsEcsServiceServiceRegistriesDetails' {containerName} -> containerName) (\s@AwsEcsServiceServiceRegistriesDetails' {} a -> s {containerName = a} :: AwsEcsServiceServiceRegistriesDetails)

-- | The ARN of the service registry.
awsEcsServiceServiceRegistriesDetails_registryArn :: Lens.Lens' AwsEcsServiceServiceRegistriesDetails (Prelude.Maybe Prelude.Text)
awsEcsServiceServiceRegistriesDetails_registryArn = Lens.lens (\AwsEcsServiceServiceRegistriesDetails' {registryArn} -> registryArn) (\s@AwsEcsServiceServiceRegistriesDetails' {} a -> s {registryArn = a} :: AwsEcsServiceServiceRegistriesDetails)

instance
  Core.FromJSON
    AwsEcsServiceServiceRegistriesDetails
  where
  parseJSON =
    Core.withObject
      "AwsEcsServiceServiceRegistriesDetails"
      ( \x ->
          AwsEcsServiceServiceRegistriesDetails'
            Prelude.<$> (x Core..:? "Port")
            Prelude.<*> (x Core..:? "ContainerPort")
            Prelude.<*> (x Core..:? "ContainerName")
            Prelude.<*> (x Core..:? "RegistryArn")
      )

instance
  Prelude.Hashable
    AwsEcsServiceServiceRegistriesDetails
  where
  hashWithSalt
    _salt
    AwsEcsServiceServiceRegistriesDetails' {..} =
      _salt `Prelude.hashWithSalt` port
        `Prelude.hashWithSalt` containerPort
        `Prelude.hashWithSalt` containerName
        `Prelude.hashWithSalt` registryArn

instance
  Prelude.NFData
    AwsEcsServiceServiceRegistriesDetails
  where
  rnf AwsEcsServiceServiceRegistriesDetails' {..} =
    Prelude.rnf port
      `Prelude.seq` Prelude.rnf containerPort
      `Prelude.seq` Prelude.rnf containerName
      `Prelude.seq` Prelude.rnf registryArn

instance
  Core.ToJSON
    AwsEcsServiceServiceRegistriesDetails
  where
  toJSON AwsEcsServiceServiceRegistriesDetails' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Port" Core..=) Prelude.<$> port,
            ("ContainerPort" Core..=) Prelude.<$> containerPort,
            ("ContainerName" Core..=) Prelude.<$> containerName,
            ("RegistryArn" Core..=) Prelude.<$> registryArn
          ]
      )
