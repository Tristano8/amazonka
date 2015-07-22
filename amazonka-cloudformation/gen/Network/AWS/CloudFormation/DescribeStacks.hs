{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.DescribeStacks
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Returns the description for the specified stack; if no stack name was
-- specified, then it returns the description for all the stacks created.
--
-- <http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeStacks.html>
module Network.AWS.CloudFormation.DescribeStacks
    (
    -- * Request
      DescribeStacks
    -- ** Request constructor
    , describeStacks
    -- ** Request lenses
    , drqNextToken
    , drqStackName

    -- * Response
    , DescribeStacksResponse
    -- ** Response constructor
    , describeStacksResponse
    -- ** Response lenses
    , dsrsNextToken
    , dsrsStacks
    , dsrsStatus
    ) where

import           Network.AWS.CloudFormation.Types
import           Network.AWS.Pager
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | The input for DescribeStacks action.
--
-- /See:/ 'describeStacks' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'drqNextToken'
--
-- * 'drqStackName'
data DescribeStacks = DescribeStacks'
    { _drqNextToken :: !(Maybe Text)
    , _drqStackName :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DescribeStacks' smart constructor.
describeStacks :: DescribeStacks
describeStacks =
    DescribeStacks'
    { _drqNextToken = Nothing
    , _drqStackName = Nothing
    }

-- | String that identifies the start of the next list of stacks, if there is
-- one.
drqNextToken :: Lens' DescribeStacks (Maybe Text)
drqNextToken = lens _drqNextToken (\ s a -> s{_drqNextToken = a});

-- | The name or the unique stack ID that is associated with the stack, which
-- are not always interchangeable:
--
-- -   Running stacks: You can specify either the stack\'s name or its
--     unique stack ID.
-- -   Deleted stacks: You must specify the unique stack ID.
--
-- Default: There is no default value.
drqStackName :: Lens' DescribeStacks (Maybe Text)
drqStackName = lens _drqStackName (\ s a -> s{_drqStackName = a});

instance AWSPager DescribeStacks where
        page rq rs
          | stop (rs ^. dsrsNextToken) = Nothing
          | stop (rs ^. dsrsStacks) = Nothing
          | otherwise =
            Just $ rq & drqNextToken .~ rs ^. dsrsNextToken

instance AWSRequest DescribeStacks where
        type Sv DescribeStacks = CloudFormation
        type Rs DescribeStacks = DescribeStacksResponse
        request = post
        response
          = receiveXMLWrapper "DescribeStacksResult"
              (\ s h x ->
                 DescribeStacksResponse' <$>
                   (x .@? "NextToken") <*>
                     (x .@? "Stacks" .!@ mempty >>=
                        may (parseXMLList "member"))
                     <*> (pure (fromEnum s)))

instance ToHeaders DescribeStacks where
        toHeaders = const mempty

instance ToPath DescribeStacks where
        toPath = const "/"

instance ToQuery DescribeStacks where
        toQuery DescribeStacks'{..}
          = mconcat
              ["Action" =: ("DescribeStacks" :: ByteString),
               "Version" =: ("2010-05-15" :: ByteString),
               "NextToken" =: _drqNextToken,
               "StackName" =: _drqStackName]

-- | The output for a DescribeStacks action.
--
-- /See:/ 'describeStacksResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dsrsNextToken'
--
-- * 'dsrsStacks'
--
-- * 'dsrsStatus'
data DescribeStacksResponse = DescribeStacksResponse'
    { _dsrsNextToken :: !(Maybe Text)
    , _dsrsStacks    :: !(Maybe [Stack])
    , _dsrsStatus    :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DescribeStacksResponse' smart constructor.
describeStacksResponse :: Int -> DescribeStacksResponse
describeStacksResponse pStatus =
    DescribeStacksResponse'
    { _dsrsNextToken = Nothing
    , _dsrsStacks = Nothing
    , _dsrsStatus = pStatus
    }

-- | String that identifies the start of the next list of stacks, if there is
-- one.
dsrsNextToken :: Lens' DescribeStacksResponse (Maybe Text)
dsrsNextToken = lens _dsrsNextToken (\ s a -> s{_dsrsNextToken = a});

-- | A list of stack structures.
dsrsStacks :: Lens' DescribeStacksResponse [Stack]
dsrsStacks = lens _dsrsStacks (\ s a -> s{_dsrsStacks = a}) . _Default;

-- | FIXME: Undocumented member.
dsrsStatus :: Lens' DescribeStacksResponse Int
dsrsStatus = lens _dsrsStatus (\ s a -> s{_dsrsStatus = a});
