``` How to restore content on Meta ```


Available Actions: 

1. Pull latest dashboard metadata for dashboards & looks

2. Revert dashboard metadata to latest stable commit 
ruby -r "./demo-gzr.rb" -e "ContentManagement.revert_dashboard '<commit_id>' '<dashboard_id>'"
Example command : ruby -r "./demo-gzr.rb" -e "ContentManagement.revert_dashboard '7184bed9fa84e056c318d5c16fb8a5d724c7d1d9','161'"


3. Revert all demo content to latest stable commit

ruby -r "./demo-gzr.rb" -e "ContentManagement.revert_all '<commit_id>'"


Ex: ruby -r "./demo-gzr.rb" -e "ContentManagement.revert_all 'ce42ed293f7dac622f07faa5bb03ea27effb0d31'"
