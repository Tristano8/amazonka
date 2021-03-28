{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.ContainerService
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECS.Types.ContainerService
  ( ContainerService (..)
  -- * Smart constructor
  , mkContainerService
  -- * Lenses
  , csCapacityProviderStrategy
  , csClusterArn
  , csCreatedAt
  , csCreatedBy
  , csDeploymentConfiguration
  , csDeploymentController
  , csDeployments
  , csDesiredCount
  , csEnableECSManagedTags
  , csEvents
  , csHealthCheckGracePeriodSeconds
  , csLaunchType
  , csLoadBalancers
  , csNetworkConfiguration
  , csPendingCount
  , csPlacementConstraints
  , csPlacementStrategy
  , csPlatformVersion
  , csPropagateTags
  , csRoleArn
  , csRunningCount
  , csSchedulingStrategy
  , csServiceArn
  , csServiceName
  , csServiceRegistries
  , csStatus
  , csTags
  , csTaskDefinition
  , csTaskSets
  ) where

import qualified Network.AWS.ECS.Types.CapacityProviderStrategyItem as Types
import qualified Network.AWS.ECS.Types.Deployment as Types
import qualified Network.AWS.ECS.Types.DeploymentConfiguration as Types
import qualified Network.AWS.ECS.Types.DeploymentController as Types
import qualified Network.AWS.ECS.Types.LaunchType as Types
import qualified Network.AWS.ECS.Types.LoadBalancer as Types
import qualified Network.AWS.ECS.Types.NetworkConfiguration as Types
import qualified Network.AWS.ECS.Types.PlacementConstraint as Types
import qualified Network.AWS.ECS.Types.PlacementStrategy as Types
import qualified Network.AWS.ECS.Types.PropagateTags as Types
import qualified Network.AWS.ECS.Types.SchedulingStrategy as Types
import qualified Network.AWS.ECS.Types.ServiceEvent as Types
import qualified Network.AWS.ECS.Types.ServiceRegistry as Types
import qualified Network.AWS.ECS.Types.Tag as Types
import qualified Network.AWS.ECS.Types.TaskSet as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Details on a service within a cluster
--
-- /See:/ 'mkContainerService' smart constructor.
data ContainerService = ContainerService'
  { capacityProviderStrategy :: Core.Maybe [Types.CapacityProviderStrategyItem]
    -- ^ The capacity provider strategy associated with the service.
  , clusterArn :: Core.Maybe Core.Text
    -- ^ The Amazon Resource Name (ARN) of the cluster that hosts the service.
  , createdAt :: Core.Maybe Core.NominalDiffTime
    -- ^ The Unix timestamp for when the service was created.
  , createdBy :: Core.Maybe Core.Text
    -- ^ The principal that created the service.
  , deploymentConfiguration :: Core.Maybe Types.DeploymentConfiguration
    -- ^ Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.
  , deploymentController :: Core.Maybe Types.DeploymentController
    -- ^ The deployment controller type the service is using. When using the DescribeServices API, this field is omitted if the service is using the @ECS@ deployment controller type.
  , deployments :: Core.Maybe [Types.Deployment]
    -- ^ The current state of deployments for the service.
  , desiredCount :: Core.Maybe Core.Int
    -- ^ The desired number of instantiations of the task definition to keep running on the service. This value is specified when the service is created with 'CreateService' , and it can be modified with 'UpdateService' .
  , enableECSManagedTags :: Core.Maybe Core.Bool
    -- ^ Specifies whether to enable Amazon ECS managed tags for the tasks in the service. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html Tagging Your Amazon ECS Resources> in the /Amazon Elastic Container Service Developer Guide/ .
  , events :: Core.Maybe [Types.ServiceEvent]
    -- ^ The event stream for your service. A maximum of 100 of the latest events are displayed.
  , healthCheckGracePeriodSeconds :: Core.Maybe Core.Int
    -- ^ The period of time, in seconds, that the Amazon ECS service scheduler ignores unhealthy Elastic Load Balancing target health checks after a task has first started.
  , launchType :: Core.Maybe Types.LaunchType
    -- ^ The launch type on which your service is running. If no value is specified, it will default to @EC2@ . Valid values include @EC2@ and @FARGATE@ . For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html Amazon ECS Launch Types> in the /Amazon Elastic Container Service Developer Guide/ .
  , loadBalancers :: Core.Maybe [Types.LoadBalancer]
    -- ^ A list of Elastic Load Balancing load balancer objects, containing the load balancer name, the container name (as it appears in a container definition), and the container port to access from the load balancer.
  , networkConfiguration :: Core.Maybe Types.NetworkConfiguration
    -- ^ The VPC subnet and security group configuration for tasks that receive their own elastic network interface by using the @awsvpc@ networking mode.
  , pendingCount :: Core.Maybe Core.Int
    -- ^ The number of tasks in the cluster that are in the @PENDING@ state.
  , placementConstraints :: Core.Maybe [Types.PlacementConstraint]
    -- ^ The placement constraints for the tasks in the service.
  , placementStrategy :: Core.Maybe [Types.PlacementStrategy]
    -- ^ The placement strategy that determines how tasks for the service are placed.
  , platformVersion :: Core.Maybe Core.Text
    -- ^ The platform version on which to run your service. A platform version is only specified for tasks using the Fargate launch type. If one is not specified, the @LATEST@ platform version is used by default. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html AWS Fargate Platform Versions> in the /Amazon Elastic Container Service Developer Guide/ .
  , propagateTags :: Core.Maybe Types.PropagateTags
    -- ^ Specifies whether to propagate the tags from the task definition or the service to the task. If no value is specified, the tags are not propagated.
  , roleArn :: Core.Maybe Core.Text
    -- ^ The ARN of the IAM role associated with the service that allows the Amazon ECS container agent to register container instances with an Elastic Load Balancing load balancer.
  , runningCount :: Core.Maybe Core.Int
    -- ^ The number of tasks in the cluster that are in the @RUNNING@ state.
  , schedulingStrategy :: Core.Maybe Types.SchedulingStrategy
    -- ^ The scheduling strategy to use for the service. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html Services> .
--
-- There are two service scheduler strategies available:
--
--     * @REPLICA@ -The replica scheduling strategy places and maintains the desired number of tasks across your cluster. By default, the service scheduler spreads tasks across Availability Zones. You can use task placement strategies and constraints to customize task placement decisions.
--
--
--     * @DAEMON@ -The daemon scheduling strategy deploys exactly one task on each active container instance that meets all of the task placement constraints that you specify in your cluster. The service scheduler also evaluates the task placement constraints for running tasks and will stop tasks that do not meet the placement constraints.
--
--
  , serviceArn :: Core.Maybe Core.Text
    -- ^ The ARN that identifies the service. The ARN contains the @arn:aws:ecs@ namespace, followed by the Region of the service, the AWS account ID of the service owner, the @service@ namespace, and then the service name. For example, @arn:aws:ecs:region:012345678910:service/my-service@ .
  , serviceName :: Core.Maybe Core.Text
    -- ^ The name of your service. Up to 255 letters (uppercase and lowercase), numbers, and hyphens are allowed. Service names must be unique within a cluster, but you can have similarly named services in multiple clusters within a Region or across multiple Regions.
  , serviceRegistries :: Core.Maybe [Types.ServiceRegistry]
    -- ^ The details of the service discovery registries to assign to this service. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html Service Discovery> .
  , status :: Core.Maybe Core.Text
    -- ^ The status of the service. The valid values are @ACTIVE@ , @DRAINING@ , or @INACTIVE@ .
  , tags :: Core.Maybe [Types.Tag]
    -- ^ The metadata that you apply to the service to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.
--
-- The following basic restrictions apply to tags:
--
--     * Maximum number of tags per resource - 50
--
--
--     * For each resource, each tag key must be unique, and each tag key can have only one value.
--
--
--     * Maximum key length - 128 Unicode characters in UTF-8
--
--
--     * Maximum value length - 256 Unicode characters in UTF-8
--
--
--     * If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.
--
--
--     * Tag keys and values are case-sensitive.
--
--
--     * Do not use @aws:@ , @AWS:@ , or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.
--
--
  , taskDefinition :: Core.Maybe Core.Text
    -- ^ The task definition to use for tasks in the service. This value is specified when the service is created with 'CreateService' , and it can be modified with 'UpdateService' .
  , taskSets :: Core.Maybe [Types.TaskSet]
    -- ^ Information about a set of Amazon ECS tasks in either an AWS CodeDeploy or an @EXTERNAL@ deployment. An Amazon ECS task set includes details such as the desired number of tasks, how many tasks are running, and whether the task set serves production traffic.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'ContainerService' value with any optional fields omitted.
mkContainerService
    :: ContainerService
mkContainerService
  = ContainerService'{capacityProviderStrategy = Core.Nothing,
                      clusterArn = Core.Nothing, createdAt = Core.Nothing,
                      createdBy = Core.Nothing, deploymentConfiguration = Core.Nothing,
                      deploymentController = Core.Nothing, deployments = Core.Nothing,
                      desiredCount = Core.Nothing, enableECSManagedTags = Core.Nothing,
                      events = Core.Nothing,
                      healthCheckGracePeriodSeconds = Core.Nothing,
                      launchType = Core.Nothing, loadBalancers = Core.Nothing,
                      networkConfiguration = Core.Nothing, pendingCount = Core.Nothing,
                      placementConstraints = Core.Nothing,
                      placementStrategy = Core.Nothing, platformVersion = Core.Nothing,
                      propagateTags = Core.Nothing, roleArn = Core.Nothing,
                      runningCount = Core.Nothing, schedulingStrategy = Core.Nothing,
                      serviceArn = Core.Nothing, serviceName = Core.Nothing,
                      serviceRegistries = Core.Nothing, status = Core.Nothing,
                      tags = Core.Nothing, taskDefinition = Core.Nothing,
                      taskSets = Core.Nothing}

-- | The capacity provider strategy associated with the service.
--
-- /Note:/ Consider using 'capacityProviderStrategy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csCapacityProviderStrategy :: Lens.Lens' ContainerService (Core.Maybe [Types.CapacityProviderStrategyItem])
csCapacityProviderStrategy = Lens.field @"capacityProviderStrategy"
{-# INLINEABLE csCapacityProviderStrategy #-}
{-# DEPRECATED capacityProviderStrategy "Use generic-lens or generic-optics with 'capacityProviderStrategy' instead"  #-}

-- | The Amazon Resource Name (ARN) of the cluster that hosts the service.
--
-- /Note:/ Consider using 'clusterArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csClusterArn :: Lens.Lens' ContainerService (Core.Maybe Core.Text)
csClusterArn = Lens.field @"clusterArn"
{-# INLINEABLE csClusterArn #-}
{-# DEPRECATED clusterArn "Use generic-lens or generic-optics with 'clusterArn' instead"  #-}

-- | The Unix timestamp for when the service was created.
--
-- /Note:/ Consider using 'createdAt' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csCreatedAt :: Lens.Lens' ContainerService (Core.Maybe Core.NominalDiffTime)
csCreatedAt = Lens.field @"createdAt"
{-# INLINEABLE csCreatedAt #-}
{-# DEPRECATED createdAt "Use generic-lens or generic-optics with 'createdAt' instead"  #-}

-- | The principal that created the service.
--
-- /Note:/ Consider using 'createdBy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csCreatedBy :: Lens.Lens' ContainerService (Core.Maybe Core.Text)
csCreatedBy = Lens.field @"createdBy"
{-# INLINEABLE csCreatedBy #-}
{-# DEPRECATED createdBy "Use generic-lens or generic-optics with 'createdBy' instead"  #-}

-- | Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.
--
-- /Note:/ Consider using 'deploymentConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csDeploymentConfiguration :: Lens.Lens' ContainerService (Core.Maybe Types.DeploymentConfiguration)
csDeploymentConfiguration = Lens.field @"deploymentConfiguration"
{-# INLINEABLE csDeploymentConfiguration #-}
{-# DEPRECATED deploymentConfiguration "Use generic-lens or generic-optics with 'deploymentConfiguration' instead"  #-}

-- | The deployment controller type the service is using. When using the DescribeServices API, this field is omitted if the service is using the @ECS@ deployment controller type.
--
-- /Note:/ Consider using 'deploymentController' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csDeploymentController :: Lens.Lens' ContainerService (Core.Maybe Types.DeploymentController)
csDeploymentController = Lens.field @"deploymentController"
{-# INLINEABLE csDeploymentController #-}
{-# DEPRECATED deploymentController "Use generic-lens or generic-optics with 'deploymentController' instead"  #-}

-- | The current state of deployments for the service.
--
-- /Note:/ Consider using 'deployments' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csDeployments :: Lens.Lens' ContainerService (Core.Maybe [Types.Deployment])
csDeployments = Lens.field @"deployments"
{-# INLINEABLE csDeployments #-}
{-# DEPRECATED deployments "Use generic-lens or generic-optics with 'deployments' instead"  #-}

-- | The desired number of instantiations of the task definition to keep running on the service. This value is specified when the service is created with 'CreateService' , and it can be modified with 'UpdateService' .
--
-- /Note:/ Consider using 'desiredCount' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csDesiredCount :: Lens.Lens' ContainerService (Core.Maybe Core.Int)
csDesiredCount = Lens.field @"desiredCount"
{-# INLINEABLE csDesiredCount #-}
{-# DEPRECATED desiredCount "Use generic-lens or generic-optics with 'desiredCount' instead"  #-}

-- | Specifies whether to enable Amazon ECS managed tags for the tasks in the service. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html Tagging Your Amazon ECS Resources> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- /Note:/ Consider using 'enableECSManagedTags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csEnableECSManagedTags :: Lens.Lens' ContainerService (Core.Maybe Core.Bool)
csEnableECSManagedTags = Lens.field @"enableECSManagedTags"
{-# INLINEABLE csEnableECSManagedTags #-}
{-# DEPRECATED enableECSManagedTags "Use generic-lens or generic-optics with 'enableECSManagedTags' instead"  #-}

-- | The event stream for your service. A maximum of 100 of the latest events are displayed.
--
-- /Note:/ Consider using 'events' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csEvents :: Lens.Lens' ContainerService (Core.Maybe [Types.ServiceEvent])
csEvents = Lens.field @"events"
{-# INLINEABLE csEvents #-}
{-# DEPRECATED events "Use generic-lens or generic-optics with 'events' instead"  #-}

-- | The period of time, in seconds, that the Amazon ECS service scheduler ignores unhealthy Elastic Load Balancing target health checks after a task has first started.
--
-- /Note:/ Consider using 'healthCheckGracePeriodSeconds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csHealthCheckGracePeriodSeconds :: Lens.Lens' ContainerService (Core.Maybe Core.Int)
csHealthCheckGracePeriodSeconds = Lens.field @"healthCheckGracePeriodSeconds"
{-# INLINEABLE csHealthCheckGracePeriodSeconds #-}
{-# DEPRECATED healthCheckGracePeriodSeconds "Use generic-lens or generic-optics with 'healthCheckGracePeriodSeconds' instead"  #-}

-- | The launch type on which your service is running. If no value is specified, it will default to @EC2@ . Valid values include @EC2@ and @FARGATE@ . For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html Amazon ECS Launch Types> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- /Note:/ Consider using 'launchType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csLaunchType :: Lens.Lens' ContainerService (Core.Maybe Types.LaunchType)
csLaunchType = Lens.field @"launchType"
{-# INLINEABLE csLaunchType #-}
{-# DEPRECATED launchType "Use generic-lens or generic-optics with 'launchType' instead"  #-}

-- | A list of Elastic Load Balancing load balancer objects, containing the load balancer name, the container name (as it appears in a container definition), and the container port to access from the load balancer.
--
-- /Note:/ Consider using 'loadBalancers' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csLoadBalancers :: Lens.Lens' ContainerService (Core.Maybe [Types.LoadBalancer])
csLoadBalancers = Lens.field @"loadBalancers"
{-# INLINEABLE csLoadBalancers #-}
{-# DEPRECATED loadBalancers "Use generic-lens or generic-optics with 'loadBalancers' instead"  #-}

-- | The VPC subnet and security group configuration for tasks that receive their own elastic network interface by using the @awsvpc@ networking mode.
--
-- /Note:/ Consider using 'networkConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csNetworkConfiguration :: Lens.Lens' ContainerService (Core.Maybe Types.NetworkConfiguration)
csNetworkConfiguration = Lens.field @"networkConfiguration"
{-# INLINEABLE csNetworkConfiguration #-}
{-# DEPRECATED networkConfiguration "Use generic-lens or generic-optics with 'networkConfiguration' instead"  #-}

-- | The number of tasks in the cluster that are in the @PENDING@ state.
--
-- /Note:/ Consider using 'pendingCount' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csPendingCount :: Lens.Lens' ContainerService (Core.Maybe Core.Int)
csPendingCount = Lens.field @"pendingCount"
{-# INLINEABLE csPendingCount #-}
{-# DEPRECATED pendingCount "Use generic-lens or generic-optics with 'pendingCount' instead"  #-}

-- | The placement constraints for the tasks in the service.
--
-- /Note:/ Consider using 'placementConstraints' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csPlacementConstraints :: Lens.Lens' ContainerService (Core.Maybe [Types.PlacementConstraint])
csPlacementConstraints = Lens.field @"placementConstraints"
{-# INLINEABLE csPlacementConstraints #-}
{-# DEPRECATED placementConstraints "Use generic-lens or generic-optics with 'placementConstraints' instead"  #-}

-- | The placement strategy that determines how tasks for the service are placed.
--
-- /Note:/ Consider using 'placementStrategy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csPlacementStrategy :: Lens.Lens' ContainerService (Core.Maybe [Types.PlacementStrategy])
csPlacementStrategy = Lens.field @"placementStrategy"
{-# INLINEABLE csPlacementStrategy #-}
{-# DEPRECATED placementStrategy "Use generic-lens or generic-optics with 'placementStrategy' instead"  #-}

-- | The platform version on which to run your service. A platform version is only specified for tasks using the Fargate launch type. If one is not specified, the @LATEST@ platform version is used by default. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html AWS Fargate Platform Versions> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- /Note:/ Consider using 'platformVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csPlatformVersion :: Lens.Lens' ContainerService (Core.Maybe Core.Text)
csPlatformVersion = Lens.field @"platformVersion"
{-# INLINEABLE csPlatformVersion #-}
{-# DEPRECATED platformVersion "Use generic-lens or generic-optics with 'platformVersion' instead"  #-}

-- | Specifies whether to propagate the tags from the task definition or the service to the task. If no value is specified, the tags are not propagated.
--
-- /Note:/ Consider using 'propagateTags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csPropagateTags :: Lens.Lens' ContainerService (Core.Maybe Types.PropagateTags)
csPropagateTags = Lens.field @"propagateTags"
{-# INLINEABLE csPropagateTags #-}
{-# DEPRECATED propagateTags "Use generic-lens or generic-optics with 'propagateTags' instead"  #-}

-- | The ARN of the IAM role associated with the service that allows the Amazon ECS container agent to register container instances with an Elastic Load Balancing load balancer.
--
-- /Note:/ Consider using 'roleArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csRoleArn :: Lens.Lens' ContainerService (Core.Maybe Core.Text)
csRoleArn = Lens.field @"roleArn"
{-# INLINEABLE csRoleArn #-}
{-# DEPRECATED roleArn "Use generic-lens or generic-optics with 'roleArn' instead"  #-}

-- | The number of tasks in the cluster that are in the @RUNNING@ state.
--
-- /Note:/ Consider using 'runningCount' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csRunningCount :: Lens.Lens' ContainerService (Core.Maybe Core.Int)
csRunningCount = Lens.field @"runningCount"
{-# INLINEABLE csRunningCount #-}
{-# DEPRECATED runningCount "Use generic-lens or generic-optics with 'runningCount' instead"  #-}

-- | The scheduling strategy to use for the service. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html Services> .
--
-- There are two service scheduler strategies available:
--
--     * @REPLICA@ -The replica scheduling strategy places and maintains the desired number of tasks across your cluster. By default, the service scheduler spreads tasks across Availability Zones. You can use task placement strategies and constraints to customize task placement decisions.
--
--
--     * @DAEMON@ -The daemon scheduling strategy deploys exactly one task on each active container instance that meets all of the task placement constraints that you specify in your cluster. The service scheduler also evaluates the task placement constraints for running tasks and will stop tasks that do not meet the placement constraints.
--
--
--
-- /Note:/ Consider using 'schedulingStrategy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csSchedulingStrategy :: Lens.Lens' ContainerService (Core.Maybe Types.SchedulingStrategy)
csSchedulingStrategy = Lens.field @"schedulingStrategy"
{-# INLINEABLE csSchedulingStrategy #-}
{-# DEPRECATED schedulingStrategy "Use generic-lens or generic-optics with 'schedulingStrategy' instead"  #-}

-- | The ARN that identifies the service. The ARN contains the @arn:aws:ecs@ namespace, followed by the Region of the service, the AWS account ID of the service owner, the @service@ namespace, and then the service name. For example, @arn:aws:ecs:region:012345678910:service/my-service@ .
--
-- /Note:/ Consider using 'serviceArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csServiceArn :: Lens.Lens' ContainerService (Core.Maybe Core.Text)
csServiceArn = Lens.field @"serviceArn"
{-# INLINEABLE csServiceArn #-}
{-# DEPRECATED serviceArn "Use generic-lens or generic-optics with 'serviceArn' instead"  #-}

-- | The name of your service. Up to 255 letters (uppercase and lowercase), numbers, and hyphens are allowed. Service names must be unique within a cluster, but you can have similarly named services in multiple clusters within a Region or across multiple Regions.
--
-- /Note:/ Consider using 'serviceName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csServiceName :: Lens.Lens' ContainerService (Core.Maybe Core.Text)
csServiceName = Lens.field @"serviceName"
{-# INLINEABLE csServiceName #-}
{-# DEPRECATED serviceName "Use generic-lens or generic-optics with 'serviceName' instead"  #-}

-- | The details of the service discovery registries to assign to this service. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html Service Discovery> .
--
-- /Note:/ Consider using 'serviceRegistries' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csServiceRegistries :: Lens.Lens' ContainerService (Core.Maybe [Types.ServiceRegistry])
csServiceRegistries = Lens.field @"serviceRegistries"
{-# INLINEABLE csServiceRegistries #-}
{-# DEPRECATED serviceRegistries "Use generic-lens or generic-optics with 'serviceRegistries' instead"  #-}

-- | The status of the service. The valid values are @ACTIVE@ , @DRAINING@ , or @INACTIVE@ .
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csStatus :: Lens.Lens' ContainerService (Core.Maybe Core.Text)
csStatus = Lens.field @"status"
{-# INLINEABLE csStatus #-}
{-# DEPRECATED status "Use generic-lens or generic-optics with 'status' instead"  #-}

-- | The metadata that you apply to the service to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.
--
-- The following basic restrictions apply to tags:
--
--     * Maximum number of tags per resource - 50
--
--
--     * For each resource, each tag key must be unique, and each tag key can have only one value.
--
--
--     * Maximum key length - 128 Unicode characters in UTF-8
--
--
--     * Maximum value length - 256 Unicode characters in UTF-8
--
--
--     * If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.
--
--
--     * Tag keys and values are case-sensitive.
--
--
--     * Do not use @aws:@ , @AWS:@ , or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.
--
--
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csTags :: Lens.Lens' ContainerService (Core.Maybe [Types.Tag])
csTags = Lens.field @"tags"
{-# INLINEABLE csTags #-}
{-# DEPRECATED tags "Use generic-lens or generic-optics with 'tags' instead"  #-}

-- | The task definition to use for tasks in the service. This value is specified when the service is created with 'CreateService' , and it can be modified with 'UpdateService' .
--
-- /Note:/ Consider using 'taskDefinition' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csTaskDefinition :: Lens.Lens' ContainerService (Core.Maybe Core.Text)
csTaskDefinition = Lens.field @"taskDefinition"
{-# INLINEABLE csTaskDefinition #-}
{-# DEPRECATED taskDefinition "Use generic-lens or generic-optics with 'taskDefinition' instead"  #-}

-- | Information about a set of Amazon ECS tasks in either an AWS CodeDeploy or an @EXTERNAL@ deployment. An Amazon ECS task set includes details such as the desired number of tasks, how many tasks are running, and whether the task set serves production traffic.
--
-- /Note:/ Consider using 'taskSets' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csTaskSets :: Lens.Lens' ContainerService (Core.Maybe [Types.TaskSet])
csTaskSets = Lens.field @"taskSets"
{-# INLINEABLE csTaskSets #-}
{-# DEPRECATED taskSets "Use generic-lens or generic-optics with 'taskSets' instead"  #-}

instance Core.FromJSON ContainerService where
        parseJSON
          = Core.withObject "ContainerService" Core.$
              \ x ->
                ContainerService' Core.<$>
                  (x Core..:? "capacityProviderStrategy") Core.<*>
                    x Core..:? "clusterArn"
                    Core.<*> x Core..:? "createdAt"
                    Core.<*> x Core..:? "createdBy"
                    Core.<*> x Core..:? "deploymentConfiguration"
                    Core.<*> x Core..:? "deploymentController"
                    Core.<*> x Core..:? "deployments"
                    Core.<*> x Core..:? "desiredCount"
                    Core.<*> x Core..:? "enableECSManagedTags"
                    Core.<*> x Core..:? "events"
                    Core.<*> x Core..:? "healthCheckGracePeriodSeconds"
                    Core.<*> x Core..:? "launchType"
                    Core.<*> x Core..:? "loadBalancers"
                    Core.<*> x Core..:? "networkConfiguration"
                    Core.<*> x Core..:? "pendingCount"
                    Core.<*> x Core..:? "placementConstraints"
                    Core.<*> x Core..:? "placementStrategy"
                    Core.<*> x Core..:? "platformVersion"
                    Core.<*> x Core..:? "propagateTags"
                    Core.<*> x Core..:? "roleArn"
                    Core.<*> x Core..:? "runningCount"
                    Core.<*> x Core..:? "schedulingStrategy"
                    Core.<*> x Core..:? "serviceArn"
                    Core.<*> x Core..:? "serviceName"
                    Core.<*> x Core..:? "serviceRegistries"
                    Core.<*> x Core..:? "status"
                    Core.<*> x Core..:? "tags"
                    Core.<*> x Core..:? "taskDefinition"
                    Core.<*> x Core..:? "taskSets"
