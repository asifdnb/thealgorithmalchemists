{% snapshot snapshots %}

{{
    config(
    
    target_schema = 'snapshots',
       unique_key='C_CUSTKEY',
      strategy='timestamp',
      updated_at='UPDATETIME',
    )
}}

select * from {{ source('src', 'V1') }}

{% endsnapshot %}