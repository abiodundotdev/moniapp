run_staging:
	flutter run --flavour staging --dart-define=env.mode=staging
run_app:
	flutter run
git_add:
	git add --all