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
-- Module      : Amazonka.ChimeSDKMessaging.Types.Processor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ChimeSDKMessaging.Types.Processor where

import Amazonka.ChimeSDKMessaging.Types.FallbackAction
import Amazonka.ChimeSDKMessaging.Types.ProcessorConfiguration
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The information about a processor in a channel flow.
--
-- /See:/ 'newProcessor' smart constructor.
data Processor = Processor'
  { -- | The name of the channel flow.
    name :: Core.Sensitive Prelude.Text,
    -- | The information about the type of processor and its identifier.
    configuration :: ProcessorConfiguration,
    -- | The sequence in which processors run. If you have multiple processors in
    -- a channel flow, message processing goes through each processor in the
    -- sequence. The value determines the sequence. At this point, we support
    -- only 1 processor within a flow.
    executionOrder :: Prelude.Natural,
    -- | Determines whether to continue or stop processing if communication with
    -- processor fails. If the last processor in a channel flow sequence has a
    -- fallback action of CONTINUE, and communication with the processor fails,
    -- the message is considered processed and sent to the recipients in the
    -- channel.
    fallbackAction :: FallbackAction
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Processor' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'processor_name' - The name of the channel flow.
--
-- 'configuration', 'processor_configuration' - The information about the type of processor and its identifier.
--
-- 'executionOrder', 'processor_executionOrder' - The sequence in which processors run. If you have multiple processors in
-- a channel flow, message processing goes through each processor in the
-- sequence. The value determines the sequence. At this point, we support
-- only 1 processor within a flow.
--
-- 'fallbackAction', 'processor_fallbackAction' - Determines whether to continue or stop processing if communication with
-- processor fails. If the last processor in a channel flow sequence has a
-- fallback action of CONTINUE, and communication with the processor fails,
-- the message is considered processed and sent to the recipients in the
-- channel.
newProcessor ::
  -- | 'name'
  Prelude.Text ->
  -- | 'configuration'
  ProcessorConfiguration ->
  -- | 'executionOrder'
  Prelude.Natural ->
  -- | 'fallbackAction'
  FallbackAction ->
  Processor
newProcessor
  pName_
  pConfiguration_
  pExecutionOrder_
  pFallbackAction_ =
    Processor'
      { name = Core._Sensitive Lens.# pName_,
        configuration = pConfiguration_,
        executionOrder = pExecutionOrder_,
        fallbackAction = pFallbackAction_
      }

-- | The name of the channel flow.
processor_name :: Lens.Lens' Processor Prelude.Text
processor_name = Lens.lens (\Processor' {name} -> name) (\s@Processor' {} a -> s {name = a} :: Processor) Prelude.. Core._Sensitive

-- | The information about the type of processor and its identifier.
processor_configuration :: Lens.Lens' Processor ProcessorConfiguration
processor_configuration = Lens.lens (\Processor' {configuration} -> configuration) (\s@Processor' {} a -> s {configuration = a} :: Processor)

-- | The sequence in which processors run. If you have multiple processors in
-- a channel flow, message processing goes through each processor in the
-- sequence. The value determines the sequence. At this point, we support
-- only 1 processor within a flow.
processor_executionOrder :: Lens.Lens' Processor Prelude.Natural
processor_executionOrder = Lens.lens (\Processor' {executionOrder} -> executionOrder) (\s@Processor' {} a -> s {executionOrder = a} :: Processor)

-- | Determines whether to continue or stop processing if communication with
-- processor fails. If the last processor in a channel flow sequence has a
-- fallback action of CONTINUE, and communication with the processor fails,
-- the message is considered processed and sent to the recipients in the
-- channel.
processor_fallbackAction :: Lens.Lens' Processor FallbackAction
processor_fallbackAction = Lens.lens (\Processor' {fallbackAction} -> fallbackAction) (\s@Processor' {} a -> s {fallbackAction = a} :: Processor)

instance Core.FromJSON Processor where
  parseJSON =
    Core.withObject
      "Processor"
      ( \x ->
          Processor'
            Prelude.<$> (x Core..: "Name")
            Prelude.<*> (x Core..: "Configuration")
            Prelude.<*> (x Core..: "ExecutionOrder")
            Prelude.<*> (x Core..: "FallbackAction")
      )

instance Prelude.Hashable Processor where
  hashWithSalt _salt Processor' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` configuration
      `Prelude.hashWithSalt` executionOrder
      `Prelude.hashWithSalt` fallbackAction

instance Prelude.NFData Processor where
  rnf Processor' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf configuration
      `Prelude.seq` Prelude.rnf executionOrder
      `Prelude.seq` Prelude.rnf fallbackAction

instance Core.ToJSON Processor where
  toJSON Processor' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Name" Core..= name),
            Prelude.Just ("Configuration" Core..= configuration),
            Prelude.Just
              ("ExecutionOrder" Core..= executionOrder),
            Prelude.Just
              ("FallbackAction" Core..= fallbackAction)
          ]
      )
