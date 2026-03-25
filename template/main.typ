#import "@preview/resume-ng:1.0.0": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Resume-ng",
  author: (name: "向平江"),
  contacts: 
    (
      link("tel:+8618991699014", "+86 18991699014"),
      link("mailto:825717414@qq.com", "825717414@qq.com"),
      link("https://xpjblog.netlify.app/", "xpjblog.netlify.app"),
      link("https://github.com/xiangpingjiang", "github.com/xiangpingjiang"),
      "中国 · 杭州",

    )
)

#resume-section("教育经历")
#resume-education(
  university: "IMT Atlantique（布列塔尼国立高等电信）",
  degree: "工程型硕士研究生",
  school: "计算机科学",
  start: "2019.09",
  end: "2022.09"
)[
*法国前三工程师学校*
- 主攻虚拟化、分布式系统方向。
- 获国家留学基金委CSC奖学金（2018-2019）。 
- 期间在法国电信和 Synapse Medicine 进行了为期一年多的实习。
]

#resume-education(
  university: "西安电子科技大学", 
   degree: "工学学士",
  school: "通信工程",
  start: "2015.09",
  end: "2019.06"
)[
*课程平均成绩88/100（专业前15%）*
]

#resume-section("技术能力")
- *编程语言*：Golang（精通）、 Python（熟练）、Java（熟练）
- *云原生*：Docker、Kubernetes、Operator开发、Knative、OpenKruise
- *Devops*：Prometheus Operator、Grafana、 GitLab CI、Terraform、Nix、Ansible
- *框架*：Go-zero、Kitex、Gin
- *AI*：LLM Agent构建、RAG技术应用、MCP协议、A2A协议、 Claude Skills
#resume-section("工作经历")
#resume-work(
  company: "Synapse Medicine",
  duty: "Devops 工程师",
  start: "2020.10",
  end: "2021.08"
)[
- 负责 GitLab CI/CD 流水线的设计、开发与维护，落地 ChatOps 实践，提升研发发布效率与协作透明度。
- 使用 Terraform 进行云服务器资源的编排、管理与成本优化，保障基础设施即代码（IaC）规范落地。
- 负责 Kubernetes 集群运维与稳定性保障，持续优化集群性能与调度策略，确保微服务高可用运行。
]
#resume-work(
  company: "蚂蚁集团",
  duty: "PAAS平台工程师",
  start: "2022.12",
  end: "2024.01"
)[
- 负责支付宝小程序云托管平台公网测试域名、云调用模块开发
- 搭建K8s workload监控体系，保障平台稳定性，核心指标可用性提升至99.99%
]
#resume-work(
  company: "蚂蚁集团",
  duty: "LLM agent应用开发",
  start: "2024.01",
  end: "2025.11"
)[
- 主导数据库模块、长期记忆模块的设计与研发，支撑核心AI产品落地
- 负责Agent沙箱系统的架构设计与核心功能实现，保障多Agent协同安全
]


#resume-section("项目经历")

#resume-project(
  title: "多Agent协同系统（类Manus通用智能体）",
  duty: "Agent Sandbox 设计与实现",
  start: "2025.05",
  end: "2025.11"
)[
- 设计并实现用户计算机资源分配/回收机制，基于FastMCP构建MCP Server Proxy
- 完成MCP Servers协议升级（SSE → Streamable HTTP），提升数据传输效率30%
- 实现会话维度的资源生命周期管理，降低资源占用率50%
]


#resume-project(
  title: "百宝箱 - 数据库模块设计与实现",
  duty: "技术负责人：全模块设计、实现与稳定性保障",
  start: "2024.08",
  end: "2025.11"
)[
- 实现物理表+OB JSON虚拟表双存储方案，支持多数据类型灵活存储
- 基于SQL改写实现用户维度表隔离，保障数据安全
- 落地Text2SQL技术并完成效果评测，SQL生成准确率提升至85%+
- 支持FunctionCall调用和自定义SQL执行，满足多场景需求
]

#resume-project(
  title: "百宝箱 - 长期记忆模块设计与实现",
  duty: "技术负责人：全模块设计、实现与稳定性保障",
  start: "2024.12",
  end: "2025.11"
)[
- 集成Mem0开源项目作为核心记忆生成链路，适配业务场景定制化改造
- 基于消息队列 + FaaS 实现记忆异步生成与存储，系统最大吞吐量提升 50%
- 设计对话/工作流场景下的向量检索匹配策略，召回率提升至90%+
]



#resume-project(
  title: "支付宝小程序云托管 - 域名管理模块",
  duty: "技术设计与实现、稳定性保障",
  start: "2023.08",
  end: "2024.01"

)[
- 落地流量管理三层模型，适配小程序云场景
- 设计域名全生命周期管理流程，实现域名自动化申请，提效80%
]

#resume-project(
  title: "支付宝小程序云托管故障机迁移设计和实现",
  duty: "技术设计与实现以及稳定性保障",
  start: "2022.12",
  end: "2023.03"

)[
  - 针对有状态服务和无状态服务设计不同的迁移方案，并在controller 中实现。
]

#resume-project(
  title: "支付宝小程序云托管 - 数据回流Controller",
  duty: "技术设计与实现、稳定性保障",
  start: "2023.02",
  end: "2023.05"

)[
- 基于Pod数量/状态设计数据回流策略，实现Controller自动管控
- 保障数据一致性，回流准确率达99.99%
]
#resume-section("开源贡献")
#resume-project(
  title: "Mem0",
  duty: "Universal memory layer for AI Agents（AI智能体通用记忆层）",
)[
- PR: #link("https://github.com/mem0ai/mem0/pull/2201", "mem0#2201")
- 优化记忆整理流程，实现检索后记忆的去重，提升记忆模块准确性
]

#resume-project(
  title: "OpenKruise",
  duty: "Automated management of large-scale applications on Kubernetes",
)[
- PR: #link("https://github.com/openkruise/kruise/pull/1324", "kruise#1324")
- 修复CloneSet在UpdateStrategy Paused=true时的升级暂停逻辑,保障应用发布稳定性
- PR: #link("https://github.com/openkruise/kruise/pull/1457", "kruise#1457")
- 修复E2E单元测试，提升测试覆盖率
]

#resume-project(
  title: "Knative/Serving",
  duty: "Kubernetes-based, scale-to-zero, request-driven compute",
)[
- PR: #link("https://github.com/knative/serving/pull/14565", "serving#14565")
- 替换废弃API（wait.PollImmediate → wait.PollUntilContextTimeout）,提升代码兼容性
- PR: #link("https://github.com/knative/serving/pull/1457", "serving#1457")
- 在性能测试中新增SLA标准，提升测试体系完整性
]

#resume-project(
  title: "Knative/Eventing",
  duty: "Event-driven application platform for Kubernetes",
)[
- PR: #link("https://github.com/knative/eventing/pull/7338", "eventing#7338")
- 支持ServiceAccount自动生成，优化鉴权体系
- PR: #link("https://github.com/knative/eventing/pull/7417", "eventing#7417")
- 重构AuthStatus逻辑，提升代码可维护性
- PR: #link("https://github.com/knative/eventing/pull/7499", "eventing#7499")
- 修复MT-Broker-Ingress监听异常，保障事件流转稳定性
]

#resume-project(
  title: "Nixpkgs",
  duty: "Nix Packages collection & NixOS",
)[
- PR: #link("https://github.com/NixOS/nixpkgs/pull/483949", "nixpkgs#483949")
- 新增aliyunpan包到Nixpkgs官方仓库
- PR: #link("https://github.com/NixOS/nixpkgs/pull/483894", "nixpkgs#483894")
- 修复metacubexd包的打包Bug
- 个人配置: #link("https://github.com/xiangpingjiang/nixos-config", "nixos-config")
- Nix/Nixpkgs/NixOS社区活跃成员，日常使用NixOS系统
]
#resume-section("其他信息")
- 语言能力：英语（雅思6.5/CET6 500+）、法语（精通）
// - 校园经历：担任China Club主席，组织中国文化传播活动
- 技术博客：善于技术写作，持续关注互联网技术发展。 个人技术博客： #link("https://xpjblog.netlify.app/")[https://xpjblog.netlify.app/]
