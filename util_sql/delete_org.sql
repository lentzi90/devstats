create temp table repos as (select id, name from gha_repos where org_login = 'open-cluster-management');
delete from gha_branches where repo_id in (select id from repos);
delete from gha_teams_repositories where repository_id in (select id from repos);
delete from gha_pull_requests_assignees where event_id in (select id from gha_events where dup_repo_name in (select name from repos));
delete from gha_pull_requests_requested_reviewers where event_id in (select id from gha_events where dup_repo_name in (select name from repos));
delete from gha_issues_assignees where event_id in (select id from gha_events where dup_repo_name in (select name from repos));
delete from gha_releases_assets where event_id in (select id from gha_events where dup_repo_name in (select name from repos));
delete from gha_commits_files where sha in (select sha from gha_commits where dup_repo_name in (select name from repos));
delete from gha_skip_commits where sha in (select sha from gha_commits where dup_repo_name in (select name from repos));
delete from gha_repos where name in (select name from repos);
delete from gha_events where dup_repo_name in (select name from repos);
delete from gha_repos_langs where repo_name in (select name from repos);
delete from gha_payloads where dup_repo_name in (select name from repos);
delete from gha_commits where dup_repo_name in (select name from repos);
delete from gha_pages where dup_repo_name in (select name from repos);
delete from gha_comments where dup_repo_name in (select name from repos);
delete from gha_reviews where dup_repo_name in (select name from repos);
delete from gha_issues where dup_repo_name in (select name from repos);
delete from gha_milestones where dup_repo_name in (select name from repos);
delete from gha_issues_labels where dup_repo_name in (select name from repos);
delete from gha_forkees where dup_repo_name in (select name from repos);
delete from gha_releases where dup_repo_name in (select name from repos);
delete from gha_assets where dup_repo_name in (select name from repos);
delete from gha_pull_requests where dup_repo_name in (select name from repos);
delete from gha_teams where dup_repo_name in (select name from repos);
delete from gha_events_commits_files where dup_repo_name in (select name from repos);
delete from gha_texts where repo_name in (select name from repos);
delete from gha_issues_events_labels where repo_name in (select name from repos);
delete from gha_issues_pull_requests where repo_name in (select name from repos);
