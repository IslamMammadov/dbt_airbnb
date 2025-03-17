{% docs dim_listings_cleaned_minimum_nights %}

Minimum number of nights required to rent a property

Keep in mind that old listings might have `minimum_nights` set to 0 in the source tables. 
We update this to `1` in ETL

{% enddocs %}


{% docs dim_hosts_updated_at %}

This likely refers to a timestamp column that tracks the last update of a host's record

{% enddocs %}