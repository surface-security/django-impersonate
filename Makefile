.PHONY: style
style:
	black --target-version=py37 \
	      --line-length=120 \
		  --skip-string-normalization \
		  impersonate testapp

.PHONY: style_check
style_check:
	black --target-version=py37 \
	      --line-length=120 \
		  --skip-string-normalization \
		  --check \
		  impersonate testapp

test:
	testapp/manage.py test $${TEST_ARGS:-tests}

coverage:
	PYTHONPATH="testapp" \
		python -b -W always -m coverage run testapp/manage.py test $${TEST_ARGS:-tests}
	coverage report
