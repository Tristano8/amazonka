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
-- Module      : Amazonka.FraudDetector.GetRules
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get all rules for a detector (paginated) if @ruleId@ and @ruleVersion@
-- are not specified. Gets all rules for the detector and the @ruleId@ if
-- present (paginated). Gets a specific rule if both the @ruleId@ and the
-- @ruleVersion@ are specified.
--
-- This is a paginated API. Providing null maxResults results in retrieving
-- maximum of 100 records per page. If you provide maxResults the value
-- must be between 50 and 100. To get the next page result, a provide a
-- pagination token from GetRulesResult as part of your request. Null
-- pagination token fetches the records from the beginning.
module Amazonka.FraudDetector.GetRules
  ( -- * Creating a Request
    GetRules (..),
    newGetRules,

    -- * Request Lenses
    getRules_ruleVersion,
    getRules_ruleId,
    getRules_nextToken,
    getRules_maxResults,
    getRules_detectorId,

    -- * Destructuring the Response
    GetRulesResponse (..),
    newGetRulesResponse,

    -- * Response Lenses
    getRulesResponse_ruleDetails,
    getRulesResponse_nextToken,
    getRulesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.FraudDetector.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetRules' smart constructor.
data GetRules = GetRules'
  { -- | The rule version.
    ruleVersion :: Prelude.Maybe Prelude.Text,
    -- | The rule ID.
    ruleId :: Prelude.Maybe Prelude.Text,
    -- | The next page token.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of rules to return for the request.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The detector ID.
    detectorId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetRules' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ruleVersion', 'getRules_ruleVersion' - The rule version.
--
-- 'ruleId', 'getRules_ruleId' - The rule ID.
--
-- 'nextToken', 'getRules_nextToken' - The next page token.
--
-- 'maxResults', 'getRules_maxResults' - The maximum number of rules to return for the request.
--
-- 'detectorId', 'getRules_detectorId' - The detector ID.
newGetRules ::
  -- | 'detectorId'
  Prelude.Text ->
  GetRules
newGetRules pDetectorId_ =
  GetRules'
    { ruleVersion = Prelude.Nothing,
      ruleId = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      detectorId = pDetectorId_
    }

-- | The rule version.
getRules_ruleVersion :: Lens.Lens' GetRules (Prelude.Maybe Prelude.Text)
getRules_ruleVersion = Lens.lens (\GetRules' {ruleVersion} -> ruleVersion) (\s@GetRules' {} a -> s {ruleVersion = a} :: GetRules)

-- | The rule ID.
getRules_ruleId :: Lens.Lens' GetRules (Prelude.Maybe Prelude.Text)
getRules_ruleId = Lens.lens (\GetRules' {ruleId} -> ruleId) (\s@GetRules' {} a -> s {ruleId = a} :: GetRules)

-- | The next page token.
getRules_nextToken :: Lens.Lens' GetRules (Prelude.Maybe Prelude.Text)
getRules_nextToken = Lens.lens (\GetRules' {nextToken} -> nextToken) (\s@GetRules' {} a -> s {nextToken = a} :: GetRules)

-- | The maximum number of rules to return for the request.
getRules_maxResults :: Lens.Lens' GetRules (Prelude.Maybe Prelude.Natural)
getRules_maxResults = Lens.lens (\GetRules' {maxResults} -> maxResults) (\s@GetRules' {} a -> s {maxResults = a} :: GetRules)

-- | The detector ID.
getRules_detectorId :: Lens.Lens' GetRules Prelude.Text
getRules_detectorId = Lens.lens (\GetRules' {detectorId} -> detectorId) (\s@GetRules' {} a -> s {detectorId = a} :: GetRules)

instance Core.AWSRequest GetRules where
  type AWSResponse GetRules = GetRulesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetRulesResponse'
            Prelude.<$> (x Core..?> "ruleDetails" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetRules where
  hashWithSalt _salt GetRules' {..} =
    _salt `Prelude.hashWithSalt` ruleVersion
      `Prelude.hashWithSalt` ruleId
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` detectorId

instance Prelude.NFData GetRules where
  rnf GetRules' {..} =
    Prelude.rnf ruleVersion
      `Prelude.seq` Prelude.rnf ruleId
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf detectorId

instance Core.ToHeaders GetRules where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHawksNestServiceFacade.GetRules" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetRules where
  toJSON GetRules' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ruleVersion" Core..=) Prelude.<$> ruleVersion,
            ("ruleId" Core..=) Prelude.<$> ruleId,
            ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("detectorId" Core..= detectorId)
          ]
      )

instance Core.ToPath GetRules where
  toPath = Prelude.const "/"

instance Core.ToQuery GetRules where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetRulesResponse' smart constructor.
data GetRulesResponse = GetRulesResponse'
  { -- | The details of the requested rule.
    ruleDetails :: Prelude.Maybe [RuleDetail],
    -- | The next page token to be used in subsequent requests.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetRulesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ruleDetails', 'getRulesResponse_ruleDetails' - The details of the requested rule.
--
-- 'nextToken', 'getRulesResponse_nextToken' - The next page token to be used in subsequent requests.
--
-- 'httpStatus', 'getRulesResponse_httpStatus' - The response's http status code.
newGetRulesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetRulesResponse
newGetRulesResponse pHttpStatus_ =
  GetRulesResponse'
    { ruleDetails = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The details of the requested rule.
getRulesResponse_ruleDetails :: Lens.Lens' GetRulesResponse (Prelude.Maybe [RuleDetail])
getRulesResponse_ruleDetails = Lens.lens (\GetRulesResponse' {ruleDetails} -> ruleDetails) (\s@GetRulesResponse' {} a -> s {ruleDetails = a} :: GetRulesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The next page token to be used in subsequent requests.
getRulesResponse_nextToken :: Lens.Lens' GetRulesResponse (Prelude.Maybe Prelude.Text)
getRulesResponse_nextToken = Lens.lens (\GetRulesResponse' {nextToken} -> nextToken) (\s@GetRulesResponse' {} a -> s {nextToken = a} :: GetRulesResponse)

-- | The response's http status code.
getRulesResponse_httpStatus :: Lens.Lens' GetRulesResponse Prelude.Int
getRulesResponse_httpStatus = Lens.lens (\GetRulesResponse' {httpStatus} -> httpStatus) (\s@GetRulesResponse' {} a -> s {httpStatus = a} :: GetRulesResponse)

instance Prelude.NFData GetRulesResponse where
  rnf GetRulesResponse' {..} =
    Prelude.rnf ruleDetails
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
