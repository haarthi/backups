# Content Management - Demo Instances

This Ruby script runs nightly and takes a backup of "production" deemed dashboards and reports on demo.looker.com. SE teams can restore a specific piece of content or all content to any prior state of that content (as available from the nightly snapshots). 

## Available Actions

1. Pull latest dashboard and look metadata for dashboards & looks outlined in the ruby file below \
   ```ruby -r "./demo-gzr.rb" -e "ContentManagement.store_content_metadata" ```

2. Revert dashboard to stable commit \
  ```ruby -r "./demo-gzr.rb" -e "ContentManagement.update_dashboard '<commit_id>' '<dashboard_id>'" ``` \
  Ex: ```ruby -r "./demo-gzr.rb" -e "ContentManagement.revert_dashboard '7184bed9fa84e056c318d5c16fb8a5d724c7d1d9','161'"```

3. Revert look to stable commit

4. Revert all demo content to latest stable commit \
  ```ruby -r "./demo-gzr.rb" -e "ContentManagement.revert_all '<commit_id>'" ```
