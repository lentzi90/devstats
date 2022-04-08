delete from gha_branches where repo_id in (select id from gha_repos where name in ('ibuildthecloud/k3d', 'ibuildthecloud/k3d-go', 'ibuildthecloud/k3s', 'ibuildthecloud/k3s-dev', 'ibuildthecloud/k3s-operator', 'ibuildthecloud/k3s-root', 'ibuildthecloud/k3s-selinux', 'k3s-io/klog', 'k3s-io/containerd', 'k3s-io/cri-tools', 'k3s-io/etcd', 'k3s-io/flannel', 'k3s-io/go-powershell', 'k3s-io/kubernetes', 'k3s-io/nocode', 'rancher/k3d', 'rancher/k3s', 'rancher/k3s-ansible', 'rancher/k3s-root', 'rancher/k3s-selinux', 'rancher/k3s-upgrade', 'rancher/terraform-k3s-aws-cluster'));
delete from gha_teams_repositories where repository_id in (select id from gha_repos where name in ('ibuildthecloud/k3d', 'ibuildthecloud/k3d-go', 'ibuildthecloud/k3s', 'ibuildthecloud/k3s-dev', 'ibuildthecloud/k3s-operator', 'ibuildthecloud/k3s-root', 'ibuildthecloud/k3s-selinux', 'k3s-io/klog', 'k3s-io/containerd', 'k3s-io/cri-tools', 'k3s-io/etcd', 'k3s-io/flannel', 'k3s-io/go-powershell', 'k3s-io/kubernetes', 'k3s-io/nocode', 'rancher/k3d', 'rancher/k3s', 'rancher/k3s-ansible', 'rancher/k3s-root', 'rancher/k3s-selinux', 'rancher/k3s-upgrade', 'rancher/terraform-k3s-aws-cluster'));
delete from gha_repos where name in ('ibuildthecloud/k3d', 'ibuildthecloud/k3d-go', 'ibuildthecloud/k3s', 'ibuildthecloud/k3s-dev', 'ibuildthecloud/k3s-operator', 'ibuildthecloud/k3s-root', 'ibuildthecloud/k3s-selinux', 'k3s-io/klog', 'k3s-io/containerd', 'k3s-io/cri-tools', 'k3s-io/etcd', 'k3s-io/flannel', 'k3s-io/go-powershell', 'k3s-io/kubernetes', 'k3s-io/nocode', 'rancher/k3d', 'rancher/k3s', 'rancher/k3s-ansible', 'rancher/k3s-root', 'rancher/k3s-selinux', 'rancher/k3s-upgrade', 'rancher/terraform-k3s-aws-cluster');
delete from gha_events where dup_repo_name in ('ibuildthecloud/k3d', 'ibuildthecloud/k3d-go', 'ibuildthecloud/k3s', 'ibuildthecloud/k3s-dev', 'ibuildthecloud/k3s-operator', 'ibuildthecloud/k3s-root', 'ibuildthecloud/k3s-selinux', 'k3s-io/klog', 'k3s-io/containerd', 'k3s-io/cri-tools', 'k3s-io/etcd', 'k3s-io/flannel', 'k3s-io/go-powershell', 'k3s-io/kubernetes', 'k3s-io/nocode', 'rancher/k3d', 'rancher/k3s', 'rancher/k3s-ansible', 'rancher/k3s-root', 'rancher/k3s-selinux', 'rancher/k3s-upgrade', 'rancher/terraform-k3s-aws-cluster');
delete from gha_repos_langs where repo_name in ('ibuildthecloud/k3d', 'ibuildthecloud/k3d-go', 'ibuildthecloud/k3s', 'ibuildthecloud/k3s-dev', 'ibuildthecloud/k3s-operator', 'ibuildthecloud/k3s-root', 'ibuildthecloud/k3s-selinux', 'k3s-io/klog', 'k3s-io/containerd', 'k3s-io/cri-tools', 'k3s-io/etcd', 'k3s-io/flannel', 'k3s-io/go-powershell', 'k3s-io/kubernetes', 'k3s-io/nocode', 'rancher/k3d', 'rancher/k3s', 'rancher/k3s-ansible', 'rancher/k3s-root', 'rancher/k3s-selinux', 'rancher/k3s-upgrade', 'rancher/terraform-k3s-aws-cluster');
delete from gha_payloads where dup_repo_name in ('ibuildthecloud/k3d', 'ibuildthecloud/k3d-go', 'ibuildthecloud/k3s', 'ibuildthecloud/k3s-dev', 'ibuildthecloud/k3s-operator', 'ibuildthecloud/k3s-root', 'ibuildthecloud/k3s-selinux', 'k3s-io/klog', 'k3s-io/containerd', 'k3s-io/cri-tools', 'k3s-io/etcd', 'k3s-io/flannel', 'k3s-io/go-powershell', 'k3s-io/kubernetes', 'k3s-io/nocode', 'rancher/k3d', 'rancher/k3s', 'rancher/k3s-ansible', 'rancher/k3s-root', 'rancher/k3s-selinux', 'rancher/k3s-upgrade', 'rancher/terraform-k3s-aws-cluster');
delete from gha_commits where dup_repo_name in ('ibuildthecloud/k3d', 'ibuildthecloud/k3d-go', 'ibuildthecloud/k3s', 'ibuildthecloud/k3s-dev', 'ibuildthecloud/k3s-operator', 'ibuildthecloud/k3s-root', 'ibuildthecloud/k3s-selinux', 'k3s-io/klog', 'k3s-io/containerd', 'k3s-io/cri-tools', 'k3s-io/etcd', 'k3s-io/flannel', 'k3s-io/go-powershell', 'k3s-io/kubernetes', 'k3s-io/nocode', 'rancher/k3d', 'rancher/k3s', 'rancher/k3s-ansible', 'rancher/k3s-root', 'rancher/k3s-selinux', 'rancher/k3s-upgrade', 'rancher/terraform-k3s-aws-cluster');
delete from gha_pages where dup_repo_name in ('ibuildthecloud/k3d', 'ibuildthecloud/k3d-go', 'ibuildthecloud/k3s', 'ibuildthecloud/k3s-dev', 'ibuildthecloud/k3s-operator', 'ibuildthecloud/k3s-root', 'ibuildthecloud/k3s-selinux', 'k3s-io/klog', 'k3s-io/containerd', 'k3s-io/cri-tools', 'k3s-io/etcd', 'k3s-io/flannel', 'k3s-io/go-powershell', 'k3s-io/kubernetes', 'k3s-io/nocode', 'rancher/k3d', 'rancher/k3s', 'rancher/k3s-ansible', 'rancher/k3s-root', 'rancher/k3s-selinux', 'rancher/k3s-upgrade', 'rancher/terraform-k3s-aws-cluster');
delete from gha_comments where dup_repo_name in ('ibuildthecloud/k3d', 'ibuildthecloud/k3d-go', 'ibuildthecloud/k3s', 'ibuildthecloud/k3s-dev', 'ibuildthecloud/k3s-operator', 'ibuildthecloud/k3s-root', 'ibuildthecloud/k3s-selinux', 'k3s-io/klog', 'k3s-io/containerd', 'k3s-io/cri-tools', 'k3s-io/etcd', 'k3s-io/flannel', 'k3s-io/go-powershell', 'k3s-io/kubernetes', 'k3s-io/nocode', 'rancher/k3d', 'rancher/k3s', 'rancher/k3s-ansible', 'rancher/k3s-root', 'rancher/k3s-selinux', 'rancher/k3s-upgrade', 'rancher/terraform-k3s-aws-cluster');
delete from gha_reviews where dup_repo_name in ('ibuildthecloud/k3d', 'ibuildthecloud/k3d-go', 'ibuildthecloud/k3s', 'ibuildthecloud/k3s-dev', 'ibuildthecloud/k3s-operator', 'ibuildthecloud/k3s-root', 'ibuildthecloud/k3s-selinux', 'k3s-io/klog', 'k3s-io/containerd', 'k3s-io/cri-tools', 'k3s-io/etcd', 'k3s-io/flannel', 'k3s-io/go-powershell', 'k3s-io/kubernetes', 'k3s-io/nocode', 'rancher/k3d', 'rancher/k3s', 'rancher/k3s-ansible', 'rancher/k3s-root', 'rancher/k3s-selinux', 'rancher/k3s-upgrade', 'rancher/terraform-k3s-aws-cluster');
delete from gha_issues where dup_repo_name in ('ibuildthecloud/k3d', 'ibuildthecloud/k3d-go', 'ibuildthecloud/k3s', 'ibuildthecloud/k3s-dev', 'ibuildthecloud/k3s-operator', 'ibuildthecloud/k3s-root', 'ibuildthecloud/k3s-selinux', 'k3s-io/klog', 'k3s-io/containerd', 'k3s-io/cri-tools', 'k3s-io/etcd', 'k3s-io/flannel', 'k3s-io/go-powershell', 'k3s-io/kubernetes', 'k3s-io/nocode', 'rancher/k3d', 'rancher/k3s', 'rancher/k3s-ansible', 'rancher/k3s-root', 'rancher/k3s-selinux', 'rancher/k3s-upgrade', 'rancher/terraform-k3s-aws-cluster');
delete from gha_milestones where dup_repo_name in ('ibuildthecloud/k3d', 'ibuildthecloud/k3d-go', 'ibuildthecloud/k3s', 'ibuildthecloud/k3s-dev', 'ibuildthecloud/k3s-operator', 'ibuildthecloud/k3s-root', 'ibuildthecloud/k3s-selinux', 'k3s-io/klog', 'k3s-io/containerd', 'k3s-io/cri-tools', 'k3s-io/etcd', 'k3s-io/flannel', 'k3s-io/go-powershell', 'k3s-io/kubernetes', 'k3s-io/nocode', 'rancher/k3d', 'rancher/k3s', 'rancher/k3s-ansible', 'rancher/k3s-root', 'rancher/k3s-selinux', 'rancher/k3s-upgrade', 'rancher/terraform-k3s-aws-cluster');
delete from gha_issues_labels where dup_repo_name in ('ibuildthecloud/k3d', 'ibuildthecloud/k3d-go', 'ibuildthecloud/k3s', 'ibuildthecloud/k3s-dev', 'ibuildthecloud/k3s-operator', 'ibuildthecloud/k3s-root', 'ibuildthecloud/k3s-selinux', 'k3s-io/klog', 'k3s-io/containerd', 'k3s-io/cri-tools', 'k3s-io/etcd', 'k3s-io/flannel', 'k3s-io/go-powershell', 'k3s-io/kubernetes', 'k3s-io/nocode', 'rancher/k3d', 'rancher/k3s', 'rancher/k3s-ansible', 'rancher/k3s-root', 'rancher/k3s-selinux', 'rancher/k3s-upgrade', 'rancher/terraform-k3s-aws-cluster');
delete from gha_forkees where dup_repo_name in ('ibuildthecloud/k3d', 'ibuildthecloud/k3d-go', 'ibuildthecloud/k3s', 'ibuildthecloud/k3s-dev', 'ibuildthecloud/k3s-operator', 'ibuildthecloud/k3s-root', 'ibuildthecloud/k3s-selinux', 'k3s-io/klog', 'k3s-io/containerd', 'k3s-io/cri-tools', 'k3s-io/etcd', 'k3s-io/flannel', 'k3s-io/go-powershell', 'k3s-io/kubernetes', 'k3s-io/nocode', 'rancher/k3d', 'rancher/k3s', 'rancher/k3s-ansible', 'rancher/k3s-root', 'rancher/k3s-selinux', 'rancher/k3s-upgrade', 'rancher/terraform-k3s-aws-cluster');
delete from gha_releases where dup_repo_name in ('ibuildthecloud/k3d', 'ibuildthecloud/k3d-go', 'ibuildthecloud/k3s', 'ibuildthecloud/k3s-dev', 'ibuildthecloud/k3s-operator', 'ibuildthecloud/k3s-root', 'ibuildthecloud/k3s-selinux', 'k3s-io/klog', 'k3s-io/containerd', 'k3s-io/cri-tools', 'k3s-io/etcd', 'k3s-io/flannel', 'k3s-io/go-powershell', 'k3s-io/kubernetes', 'k3s-io/nocode', 'rancher/k3d', 'rancher/k3s', 'rancher/k3s-ansible', 'rancher/k3s-root', 'rancher/k3s-selinux', 'rancher/k3s-upgrade', 'rancher/terraform-k3s-aws-cluster');
delete from gha_assets where dup_repo_name in ('ibuildthecloud/k3d', 'ibuildthecloud/k3d-go', 'ibuildthecloud/k3s', 'ibuildthecloud/k3s-dev', 'ibuildthecloud/k3s-operator', 'ibuildthecloud/k3s-root', 'ibuildthecloud/k3s-selinux', 'k3s-io/klog', 'k3s-io/containerd', 'k3s-io/cri-tools', 'k3s-io/etcd', 'k3s-io/flannel', 'k3s-io/go-powershell', 'k3s-io/kubernetes', 'k3s-io/nocode', 'rancher/k3d', 'rancher/k3s', 'rancher/k3s-ansible', 'rancher/k3s-root', 'rancher/k3s-selinux', 'rancher/k3s-upgrade', 'rancher/terraform-k3s-aws-cluster');
delete from gha_pull_requests where dup_repo_name in ('ibuildthecloud/k3d', 'ibuildthecloud/k3d-go', 'ibuildthecloud/k3s', 'ibuildthecloud/k3s-dev', 'ibuildthecloud/k3s-operator', 'ibuildthecloud/k3s-root', 'ibuildthecloud/k3s-selinux', 'k3s-io/klog', 'k3s-io/containerd', 'k3s-io/cri-tools', 'k3s-io/etcd', 'k3s-io/flannel', 'k3s-io/go-powershell', 'k3s-io/kubernetes', 'k3s-io/nocode', 'rancher/k3d', 'rancher/k3s', 'rancher/k3s-ansible', 'rancher/k3s-root', 'rancher/k3s-selinux', 'rancher/k3s-upgrade', 'rancher/terraform-k3s-aws-cluster');
delete from gha_teams where dup_repo_name in ('ibuildthecloud/k3d', 'ibuildthecloud/k3d-go', 'ibuildthecloud/k3s', 'ibuildthecloud/k3s-dev', 'ibuildthecloud/k3s-operator', 'ibuildthecloud/k3s-root', 'ibuildthecloud/k3s-selinux', 'k3s-io/klog', 'k3s-io/containerd', 'k3s-io/cri-tools', 'k3s-io/etcd', 'k3s-io/flannel', 'k3s-io/go-powershell', 'k3s-io/kubernetes', 'k3s-io/nocode', 'rancher/k3d', 'rancher/k3s', 'rancher/k3s-ansible', 'rancher/k3s-root', 'rancher/k3s-selinux', 'rancher/k3s-upgrade', 'rancher/terraform-k3s-aws-cluster');
delete from gha_events_commits_files where dup_repo_name in ('ibuildthecloud/k3d', 'ibuildthecloud/k3d-go', 'ibuildthecloud/k3s', 'ibuildthecloud/k3s-dev', 'ibuildthecloud/k3s-operator', 'ibuildthecloud/k3s-root', 'ibuildthecloud/k3s-selinux', 'k3s-io/klog', 'k3s-io/containerd', 'k3s-io/cri-tools', 'k3s-io/etcd', 'k3s-io/flannel', 'k3s-io/go-powershell', 'k3s-io/kubernetes', 'k3s-io/nocode', 'rancher/k3d', 'rancher/k3s', 'rancher/k3s-ansible', 'rancher/k3s-root', 'rancher/k3s-selinux', 'rancher/k3s-upgrade', 'rancher/terraform-k3s-aws-cluster');
delete from gha_texts where repo_name in ('ibuildthecloud/k3d', 'ibuildthecloud/k3d-go', 'ibuildthecloud/k3s', 'ibuildthecloud/k3s-dev', 'ibuildthecloud/k3s-operator', 'ibuildthecloud/k3s-root', 'ibuildthecloud/k3s-selinux', 'k3s-io/klog', 'k3s-io/containerd', 'k3s-io/cri-tools', 'k3s-io/etcd', 'k3s-io/flannel', 'k3s-io/go-powershell', 'k3s-io/kubernetes', 'k3s-io/nocode', 'rancher/k3d', 'rancher/k3s', 'rancher/k3s-ansible', 'rancher/k3s-root', 'rancher/k3s-selinux', 'rancher/k3s-upgrade', 'rancher/terraform-k3s-aws-cluster');
delete from gha_issues_events_labels where repo_name in ('ibuildthecloud/k3d', 'ibuildthecloud/k3d-go', 'ibuildthecloud/k3s', 'ibuildthecloud/k3s-dev', 'ibuildthecloud/k3s-operator', 'ibuildthecloud/k3s-root', 'ibuildthecloud/k3s-selinux', 'k3s-io/klog', 'k3s-io/containerd', 'k3s-io/cri-tools', 'k3s-io/etcd', 'k3s-io/flannel', 'k3s-io/go-powershell', 'k3s-io/kubernetes', 'k3s-io/nocode', 'rancher/k3d', 'rancher/k3s', 'rancher/k3s-ansible', 'rancher/k3s-root', 'rancher/k3s-selinux', 'rancher/k3s-upgrade', 'rancher/terraform-k3s-aws-cluster');
delete from gha_issues_pull_requests where repo_name in ('ibuildthecloud/k3d', 'ibuildthecloud/k3d-go', 'ibuildthecloud/k3s', 'ibuildthecloud/k3s-dev', 'ibuildthecloud/k3s-operator', 'ibuildthecloud/k3s-root', 'ibuildthecloud/k3s-selinux', 'k3s-io/klog', 'k3s-io/containerd', 'k3s-io/cri-tools', 'k3s-io/etcd', 'k3s-io/flannel', 'k3s-io/go-powershell', 'k3s-io/kubernetes', 'k3s-io/nocode', 'rancher/k3d', 'rancher/k3s', 'rancher/k3s-ansible', 'rancher/k3s-root', 'rancher/k3s-selinux', 'rancher/k3s-upgrade', 'rancher/terraform-k3s-aws-cluster');
