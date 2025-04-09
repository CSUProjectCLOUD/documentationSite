Power Edge Specs
================

[Power Edge
R710](https://www.itcreations.com/dell/dell-poweredge-r710-server?srsltid=AfmBOopiuocmKpkZ2reUJbVo480PnP2ThB9QjnACoX9cHaCPtlcaV0OC)
x 2:

-   CPU: 2

-   Cores: 16

-   Disks: 4 x 2.65GB

    -   4 x RAID5

    -   description: RAID bus controller, product: MegaRAID SAS 1078

    -   description: SCSI Disk, size: 836GiB (898GB)

[Power Edge
R730](https://savemyserver.com/dell-r730-tech-specs/?srsltid=AfmBOoq8wDtU_b4yGmLakQAp__Z7qTNVaCr7XTUl8EMeCvr2kWod4BQb):

-   CPU: 2

-   Cores: 40

-   Disks: 8 x 3.6TB

    -   1 x RAID0, 7 x RAID5

**Total**

-   CPU: 6

-   Cores: 72

-   Disks: 8 x 2.65GB, 8 x 3.6TB

-   Network: 12 ports

  **Name**    **Virtual cores**   **Memory**   **Disk**   **Ephemeral**
  ----------- ------------------- ------------ ---------- ---------------
  m1.tiny     1                   512 MB       1 GB       0 GB
  m1.small    1                   2 GB         10 GB      20 GB
  m1.medium   2                   4 GB         10 GB      40 GB
  m1.large    4                   8 GB         10 GB      80 GB
  m1.xlarge   8                   16 GB        10 GB      160 GB

<https://people.csail.mit.edu/jon/openstack-ops/openstack-ops-manual.pdf>

Example Node Spec Recommendations (Table 1.1)
=============================================

**Controller -- 710A with RAID 5**

-   CPU: 2

-   Cores: 12

-   Memory: 32GB

-   Disk: 2 x 300GB

-   Network: 2 x 10G ports

**Compute -- 730 with RAID 5**

-   CPU: 2

-   Cores: 12

-   Memory: 128GB

-   Disk: 2 X 600GB

-   Network: 4 x 10G ports

**Storage -- 730 with RAID 5**

-   CPU: 2

-   Cores: 12

-   Memory: 64GB

-   Disk: 2 x 500GB, 24 x 600GB

-   Raid Controller: PERC H710P Integrated RAID Controller, 1 GB NV
    Cache

-   Network: 2 x 10G ports

**Network -- 710B with RAID 5**

-   CPU: 1

-   Cores: 6

-   Memory: 32GB

-   Disk: 2 x 500GB

-   Network: 5 x 10G ports

**Total**

-   CPU: 7 → 8

-   Cores: 42 → 72

-   Memory: 256GB →?

-   Disk: 14.4GB → 28.8TB

-   Network: 13 x 10G ports →12 ports

3 Node Architecture Figures
===========================

[Chapter 2. Recommended specifications \| Red Hat Product
Documentation](https://docs.redhat.com/en/documentation/red_hat_openstack_platform/10/html/recommendations_for_large_deployments/recommended-specifications#overcloud-compute-nodes)

[Three-Node Architecture Overview - Installing and Configuring OpenStack
in Oracle® Solaris
11.2](https://docs.oracle.com/cd/E36784_01/html/E54155/archover.html)
