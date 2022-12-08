## random notes


* ACR: 

```bash
oras manifest fetch briaracrdg.azurecr.io/reddog-retail-demo/reddog-retail-order-service:v1
{
   "schemaVersion": 2,
   "mediaType": "application/vnd.docker.distribution.manifest.v2+json",
   "config": {
      "mediaType": "application/vnd.docker.container.image.v1+json",
      "size": 4089,
      "digest": "sha256:e70a0cf2dbb03b5294c6024ee71c798bba761d169ac6d501f4da7299fc536880"
   },
   "layers": [
      {
         "mediaType": "application/vnd.docker.image.rootfs.diff.tar.gzip",
         "size": 31378979,
         "digest": "sha256:1fe172e4850f03bb45d41a20174112bc119fbfec42a650edbbd8491aee32e3c3"
      },
      {
         "mediaType": "application/vnd.docker.image.rootfs.diff.tar.gzip",
         "size": 14966669,
         "digest": "sha256:bf06eb87a616c35c96a20d27e321d128c8ffa3d3043be450e4cde55c40ae7731"
      },
      {
         "mediaType": "application/vnd.docker.image.rootfs.diff.tar.gzip",
         "size": 31620091,
         "digest": "sha256:b06e472092282da4881988d86ce029772688c184c8e3d4be8ca57324c132d914"
      },
      {
         "mediaType": "application/vnd.docker.image.rootfs.diff.tar.gzip",
         "size": 154,
         "digest": "sha256:4ec24e6222d2a099523078066656652cc74b1e7ee6f24b316737e7c7efbab19b"
      },
      {
         "mediaType": "application/vnd.docker.image.rootfs.diff.tar.gzip",
         "size": 9449697,
         "digest": "sha256:b42fa4ca85ad1bd3e1e9701a25947c802adfd6fd644fea6071d96996d008d25c"
      },
      {
         "mediaType": "application/vnd.docker.image.rootfs.diff.tar.gzip",
         "size": 99,
         "digest": "sha256:056b634b124671f6f99e8805253c3960400df1f81634f71acbcd70d775f25dbe"
      },
      {
         "mediaType": "application/vnd.docker.image.rootfs.diff.tar.gzip",
         "size": 32,
         "digest": "sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1"
      },
      {
         "mediaType": "application/vnd.docker.image.rootfs.diff.tar.gzip",
         "size": 2138234,
         "digest": "sha256:2a63e47b97ee80993e3705baa05fa1f5ee54788cfad7c368893ad131d741bb8b"
      }
   ]
}
```

* GitHub CR (based on https://github.com/orgs/Azure/packages/container/reddog-retail-demo%2Freddog-retail-order-service/21781842?tag=c6388ea): 

```bash
oras manifest fetch ghcr.io/azure/reddog-retail-demo/reddog-retail-order-service:c6388ea
{
   "mediaType": "application/vnd.docker.distribution.manifest.v2+json",
   "schemaVersion": 2,
   "config": {
      "mediaType": "application/vnd.docker.container.image.v1+json",
      "digest": "sha256:e70a0cf2dbb03b5294c6024ee71c798bba761d169ac6d501f4da7299fc536880",
      "size": 4089
   },
   "layers": [
      {
         "mediaType": "application/vnd.docker.image.rootfs.diff.tar.gzip",
         "digest": "sha256:1fe172e4850f03bb45d41a20174112bc119fbfec42a650edbbd8491aee32e3c3",
         "size": 31378979
      },
      {
         "mediaType": "application/vnd.docker.image.rootfs.diff.tar.gzip",
         "digest": "sha256:bf06eb87a616c35c96a20d27e321d128c8ffa3d3043be450e4cde55c40ae7731",
         "size": 14966669
      },
      {
         "mediaType": "application/vnd.docker.image.rootfs.diff.tar.gzip",
         "digest": "sha256:b06e472092282da4881988d86ce029772688c184c8e3d4be8ca57324c132d914",
         "size": 31620091
      },
      {
         "mediaType": "application/vnd.docker.image.rootfs.diff.tar.gzip",
         "digest": "sha256:4ec24e6222d2a099523078066656652cc74b1e7ee6f24b316737e7c7efbab19b",
         "size": 154
      },
      {
         "mediaType": "application/vnd.docker.image.rootfs.diff.tar.gzip",
         "digest": "sha256:b42fa4ca85ad1bd3e1e9701a25947c802adfd6fd644fea6071d96996d008d25c",
         "size": 9449697
      },
      {
         "mediaType": "application/vnd.docker.image.rootfs.diff.tar.gzip",
         "digest": "sha256:056b634b124671f6f99e8805253c3960400df1f81634f71acbcd70d775f25dbe",
         "size": 99
      },
      {
         "mediaType": "application/vnd.docker.image.rootfs.diff.tar.gzip",
         "digest": "sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1",
         "size": 32
      },
      {
         "mediaType": "application/vnd.docker.image.rootfs.diff.tar.gzip",
         "digest": "sha256:2a63e47b97ee80993e3705baa05fa1f5ee54788cfad7c368893ad131d741bb8b",
         "size": 2138234
      }
   ]
}
```

* Docker inspect: 

```bash
docker inspect e70a0cf2dbb0
[
    {
        "Id": "sha256:e70a0cf2dbb03b5294c6024ee71c798bba761d169ac6d501f4da7299fc536880",
        "RepoTags": [
            "briaracrdg.azurecr.io/reddog-retail-demo/reddog-retail-order-service:v1",
            "ghcr.io/azure/reddog-retail-demo/reddog-retail-order-service:latest"
        ],
        "RepoDigests": [
            "briaracrdg.azurecr.io/reddog-retail-demo/reddog-retail-order-service@sha256:11d020a18a2fbae560b0f3c9ad25cd2e384bca4e1cbe76c380a05cd6d02d9bf5",
            "ghcr.io/azure/reddog-retail-demo/reddog-retail-order-service@sha256:b2ea13e964ee2419528537eaaeb760666017e9bae9d746b23b89f9705fa6787b"
        ],
        "Parent": "",
        "Comment": "buildkit.dockerfile.v0",
        "Created": "2022-05-10T17:22:43.060112748Z",
        "Container": "",
        "ContainerConfig": {
            "Hostname": "",
            "Domainname": "",
            "User": "",
            "AttachStdin": false,
            "AttachStdout": false,
            "AttachStderr": false,
            "Tty": false,
            "OpenStdin": false,
            "StdinOnce": false,
            "Env": null,
            "Cmd": null,
            "Image": "",
            "Volumes": null,
            "WorkingDir": "",
            "Entrypoint": null,
            "OnBuild": null,
            "Labels": null
        },
        "DockerVersion": "",
        "Author": "",
        "Config": {
            "Hostname": "",
            "Domainname": "",
            "User": "",
            "AttachStdin": false,
            "AttachStdout": false,
            "AttachStderr": false,
            "ExposedPorts": {
                "80/tcp": {}
            },
            "Tty": false,
            "OpenStdin": false,
            "StdinOnce": false,
            "Env": [
                "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
                "ASPNETCORE_URLS=http://+:80",
                "DOTNET_RUNNING_IN_CONTAINER=true",
                "DOTNET_VERSION=6.0.4",
                "ASPNET_VERSION=6.0.4",
                "Logging__Console__FormatterName=Json"
            ],
            "Cmd": null,
            "Image": "",
            "Volumes": null,
            "WorkingDir": "/app",
            "Entrypoint": [
                "dotnet",
                "RedDog.OrderService.dll"
            ],
            "OnBuild": null,
            "Labels": {
                "org.opencontainers.image.created": "2022-05-10T17:17:00Z",
                "org.opencontainers.image.revision": "c6388ea",
                "org.opencontainers.image.source": "git://github.com/Azure/reddog-code.git"
            }
        },
        "Architecture": "amd64",
        "Os": "linux",
        "Size": 214071667,
        "VirtualSize": 214071667,
        "GraphDriver": {
            "Data": {
                "LowerDir": "/var/lib/docker/overlay2/45af2a7b05c8706bd911689c21dd99ff12c7fc173c7eb16946eb947f147e8d58/diff:/var/lib/docker/overlay2/322905b14e683cb9919fabc1e65b003a7c8249dab5a56b9effb3f94c2f271cfc/diff:/var/lib/docker/overlay2/271b5d75f05a94782c47ff8f8185595d643eacc9828c025f2e5cf09215e48801/diff:/var/lib/docker/overlay2/988ac00e48e15f48d6d37d401bc4d29c3955914631408f51dc368770b3d0467f/diff:/var/lib/docker/overlay2/e8bd206c88ac4beabe85c479e619c6e5f3417043e435fea11bdba60c427f2efc/diff:/var/lib/docker/overlay2/f9ec5b3214a87078cc0e13a2fc94f42633a3f22178fbf9f1e693aeabcca7c17f/diff:/var/lib/docker/overlay2/b8a0074efc4a4b272a287334df7a74a74217514983db95593c42989a5c97a41f/diff",
                "MergedDir": "/var/lib/docker/overlay2/6810782fddaf9fc09c58ca920c97b095f140c1e49ba67810d30d564d90c655ce/merged",
                "UpperDir": "/var/lib/docker/overlay2/6810782fddaf9fc09c58ca920c97b095f140c1e49ba67810d30d564d90c655ce/diff",
                "WorkDir": "/var/lib/docker/overlay2/6810782fddaf9fc09c58ca920c97b095f140c1e49ba67810d30d564d90c655ce/work"
            },
            "Name": "overlay2"
        },
        "RootFS": {
            "Type": "layers",
            "Layers": [
                "sha256:9c1b6dd6c1e6be9fdd2b1987783824670d3b0dd7ae8ad6f57dc3cea5739ac71e",
                "sha256:20147d2db13cc8f2fdae7ccd79a062f034085716b8a9eca5eea5977b9a4141a4",
                "sha256:7dd4a3e7d836ee7bfeed1b8c6c82f22a7a6bad92a6f9c853ccc0b736ffe15702",
                "sha256:6c946b32cfe2adfa38c2079c056bae2b86672a35c7e4f344b4e74dd7dbd603bd",
                "sha256:a45a618792f027e522ae0405aa03f02ac4a633cae928dd37af614f7c206b2927",
                "sha256:9a6a839563c2691651ee458850732f3dea222831168c5dcefe3425d6078167a9",
                "sha256:5f70bf18a086007016e948b04aed3b82103a36bea41755b6cddfaf10ace3c6ef",
                "sha256:791603210da819c11ef060b332989211e4da09e17ec1a217dac3262defd7110e"
            ]
        },
        "Metadata": {
            "LastTagTime": "2022-12-08T15:27:46.911497926Z"
        }
    }
]
```

