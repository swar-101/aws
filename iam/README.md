# AWS Identity and Access Management (IAM)
In AWS Identity and Access Management(IAM), there are three main types of entities that are used for managing access to AWS resources:

1. IAM users: An IAM user is an Identity that you can create in your AWS account that has specific permissions to access the AWS resources. Each user has unique set of security credentials that are used to authenticate and authorize access to AWS resources to AWS resources. IAM users can be assigned policies that define what action they can perform on AWS resources.
2. IAM roles: An IAM role is similar to user, in that it is an identity with permissions to access AWS resources.
              However, a role is not associated with a specific user or a group, but can be assumed by one or more users applications or services. Roles are commonly used to provide temporary access to resources, such as for a specific task or during a specific time period.
3. IAM groups: An IAM user group is a collection of IAM users. You can use groups to organize your IAM users and apply policies to multiple users at once. When you add user to a group, that user inherits the permissions assigned to the group.

In summary, IAM users are identities that are associated with a specific user account, IAM roles are identities that can be assumed by users or applications, and IAM groups are collections of IAM users that can be managed as a single entity.

## Few examples of some Important IAM concepts(features): 
1. IAM Role for EC2: IAM roles can be assigned to EC2 instances to grant permissions to the applications running on those instances.
                     This avoids the need for hard-coding access keys and secret keys into the applications and helps with managing the access permissions in a more secure and scalable manner.
2. Multi-Factor Authentication (MFA): IAM supports MFA, which adds an extra layer of security by requiring users to enter a unique authentication code in addition to their username and password.
3. Identity Federation: IAM supports integration with external identity providers such as Active Directory, LDAP, and SAML, enabling users to authenticate against their existing corporate directory instead of creating new IAM user accounts.
4. AWS Organizations: IAM is used to manage access to AWS Organizations, which is a feature that enables central management of multiple AWS accounts. With IAM, you can set policies that apply to all accounts in the organization or specific accounts.
5. Access Analyser: IAM Access Analyser is a feature that helps identify resources that are publicly accessible or shared with other AWS accounts. This helps ensure that your resources are secured and accessible only to the intended users and applications.
6. IAM Permission Boundaries: IAM permission boundaries are feature that enables you to delegate permissions to other users or roles, while limiting the scope of those permissions. This helps ensure that users can only perform the tasks they need to, without granting unnecessary access to other resources.
7. IAM Access Advisor: IAM Access Advisor provides recommendations for removing unused unnecessary IAM permissions. This helps you keep your permission policies up-to-date and reduce the risk of security vulnerabilities.
8. Fine-grained access control: IAM lets you define granular permissions for individual users, groups and roles, so you can control who can access specific resources and what actions they can perform.
9. Access key management: IAM allows you to generate and manage access keys for users, which can be used to programmatically access AWS services and resources.
10. Credential rotation: IAM provides tools for managing the rotation of user and role credentials, including access keys and passwords, to ensure that they are changed regularly for security purposes.
                         Credential rotation is the process of regularly changing and updating access keys associated with IAM users, roles and application to maintain the security and integrity of your AWS resources.
11. Policy Management: IAM lets you create and manage policies that define permissions for users, groups and roles, which can be used for compliance and security purposes.