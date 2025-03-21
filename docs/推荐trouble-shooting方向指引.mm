
<map>
  <node ID="root" TEXT="推荐trouble-shooting方向指引">
    <node TEXT="原则：优先止损，再详查故障原因" ID="ece36cf750f024acdf6483d22e904650" STYLE="bubble" POSITION="right"/>
    <node TEXT="根据业务核心指标评估影响" ID="070c4d189532d4a3ab0d9cfc867f3e9f" STYLE="bubble" POSITION="right">
      <node TEXT="抖音" ID="d556fcba59e89945403c19bc2083c32e" STYLE="fork">
        <node TEXT="https://grafana.byted.org/d/NoQ7ZCHMz/tui-jian-da-pan-he-xin-zhi-biao-dou-yin?orgId=1" ID="20011cbc6e2b646a6e040589de8200f7" STYLE="fork"/>
      </node>
      <node TEXT="火山" ID="7d7d907627ddb59c0b09fcd51fd2436a" STYLE="fork">
        <node TEXT="https://grafana.byted.org/d/KPpcXmLiz/huo-shan-da-pan?orgId=1&amp;refresh=1m" ID="b31084ccd969443ce4cc1ff13759032c" STYLE="fork"/>
      </node>
      <node TEXT="tiktok" ID="70cb41504b1bc5d213360864400d0747" STYLE="fork">
        <node TEXT="https://grafana.byted.org/d/8ur9oqDGk/tui-jian-da-pan-he-xin-zhi-biao-tiktok-m?orgId=1" ID="40ae0a4216459dd69be2118b274609f9" STYLE="fork"/>
      </node>
      <node TEXT="index service" ID="5b7cead773cc914cbe6dfc0cc2f46f78" STYLE="fork">
        <node TEXT="https://grafana.byted.org/d/0CxDGEJik/index_service-dashboard?orgId=1&amp;refresh=1m" ID="806a0fe6a33526f69d8175c89b4c633b" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="查看线上关键模块的变更" ID="5dac3fc0a2f43a1505fa9146ba33c61d" STYLE="bubble" POSITION="right">
      <node TEXT="上线、重启、扩缩容；" ID="624c8ac631e76344ebf4615abe438c02" STYLE="fork"/>
      <node TEXT="开启/关闭的abtest；" ID="683b9a262e140b7b2c59d8a8c82f5734" STYLE="fork"/>
      <node TEXT="开启/关闭的降级情况；" ID="d57822d458d8214c2ec962263c313458" STYLE="fork"/>
      <node TEXT="业务上下游排查" ID="609a7fdda92891c56eb2b24d4185f43e" STYLE="fork">
        <node TEXT="​3 ByteMap 服务拓扑自动发现​ " ID="386cb904b465f5b8257e0d92efad3af2" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="是否存在流量徒增" ID="9c2508ccd47ecb1c87524a3ad6aff80a" STYLE="bubble" POSITION="right">
      <node TEXT="是否有推送；" ID="52f5ef10b7c02a4de8d6d97333b76b8b" STYLE="fork"/>
      <node TEXT="空结果 or 少结果 是否增加；" ID="164bdf45c0c3a4d04d83805c804448d5" STYLE="fork">
        <node TEXT="正排 null数是否正常；" ID="cec8d697dc32340829c3f52c43ac3fb3" STYLE="fork"/>
        <node TEXT="不同过滤策略，过滤数是否正常；" ID="c74695a2a88fb75144175e290ccf7f30" STYLE="fork"/>
        <node TEXT="不同召回结果数是否正常；" ID="5c9c21b19e9ab1d4345def31da1bc689" STYLE="fork"/>
      </node>
      <node TEXT="推荐效果：点击率、时长是否有变化；" ID="41c566c1d805f12670296a3e1cbfefff" STYLE="fork"/>
    </node>
    <node TEXT="check 集群状态" ID="613c1900a3c1c7dc95dca53bc9fb108f" STYLE="bubble" POSITION="right">
      <node TEXT="是否是单机问题；" ID="6a69f56673885440ff63a82d8c0084e9" STYLE="fork"/>
      <node TEXT="worker 是否足够，看 pending task 是否陡增；" ID="53d817fd5286fc589f638e15bea27312" STYLE="fork"/>
      <node TEXT="集群负载是否均衡" ID="97fc8b45fd80b812e664fa6c2baee65f" STYLE="fork">
        <node TEXT="服务发现是否异常，导致部分机器下线问题；" ID="b8fa052ee7c770a00f67e96d4c265dab" STYLE="fork"/>
        <node TEXT="rpc 调度是否异常；" ID="57d162ea6e8c3a694afec5177d5ec35f" STYLE="fork"/>
      </node>
      <node TEXT="log相关" ID="9b3cbda54383f87f3eba8a89e1e2a1ea" STYLE="fork">
        <node TEXT="删除日志文件，导致wa高，引起延时飙高，一般现象是不同机器周期性的飙高；" ID="68f123abd6d4a41ef18cb455c44678b9" STYLE="fork"/>
        <node TEXT="延时高的 request 是否有规律，分析日志，后面提供工具支持？" ID="c1b2e207c3cdab9e29069d08f1d42967" STYLE="fork">
          <node TEXT="可能是某些ab圈定的用户，一些参数引入的计算量增大；" ID="18e3d6df919c9897e50b4ec7f8d5e839" STYLE="fork"/>
        </node>
      </node>
    </node>
    <node TEXT="check 进程 &amp; 线程状态" ID="af0ce6a6327519a388f3ca461b16a8ce" STYLE="bubble" POSITION="right">
      <node TEXT="线程数是否稳定，是否存在不断新建&amp;销毁线程数的问题；" ID="d8682db179160c6c50abb95c26b3c5b1" STYLE="fork"/>
      <node TEXT="工作线程" ID="6abd9b5647a72be996e107ffeed2fa1c" STYLE="fork">
        <node TEXT="占用 CPU 的线程(如IO线程是否满) top -H" ID="a4deff8cc01ed43949734315cee1e2b5" STYLE="fork"/>
        <node TEXT="多核负载分配是否均衡 mpstat -P ALL 2 2" ID="59e9bcb5e654253ccaaddd721b2e3809" STYLE="fork"/>
      </node>
      <node TEXT="否出现周期性OOM" ID="7ea3a3952913f90d85e790b9aefaa785" STYLE="fork">
        <node TEXT="看进程是否频繁重启、atop、dmesg；" ID="1fd85b0dd7b1e47419bf1d767c84d1d6" STYLE="fork"/>
      </node>
      <node TEXT="是否有coredump" ID="4860741d9c392d0ca50420fc05e439eb" STYLE="fork">
        <node TEXT="看模块输出的stderr日志线索，如：部分基础库用glog checker会打印行号和问题" ID="215b0aeddd01753d1ce5dc3ba1aa7330" STYLE="fork"/>
        <node TEXT="dmesg -T &amp; addr2line 看core线索；" ID="9cbcbc8f215c803706db36d74425a6bd" STYLE="fork"/>
        <node TEXT="gcc 4.8开始支持sanitizer，获得更好的栈信息可以增加-fno-omit-frame-pointer" ID="8db7939211f0dddc3e29a5cfd066a0d1" STYLE="fork">
          <node TEXT="thread sanitizer 检查数据竞争问题(编译指定-fsanitize=thread -fPIE -pie）,如果报错找不到库，则增加-ltsan ;" ID="0f97f722774383fcb036199dc876db5b" STYLE="fork"/>
          <node TEXT="address      sanitizer 检查内存访问错误（编译指定-fsanitize=address），如果报错找不到库，则增加-lasan" ID="1409bba2261a8ba8954b59bbf6932044" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="CPU利用率  or  load 高；" ID="608488e9aa5bbfa38a18f5d277ebf01a" STYLE="fork">
        <node TEXT="看日志，是否有大量异常throw/catch exception日志；" ID="c33e7592c2d0885cb802fe33b961708b" STYLE="fork">
          <node TEXT="Gdb 可以catch 对应exception，看异常出现在哪里；" ID="8f4b271afce179b127950856883d91e7" STYLE="fork"/>
        </node>
        <node TEXT="Perf 进程 or 可疑线程，排查热点 or 锁；" ID="a5df9e9599df39d4c13b4f19ea0b5501" STYLE="fork"/>
        <node TEXT="Strace 进程 or 线程，看系统调用是否异常；" ID="b82023606fb2b2b13d05773e8f2ed649" STYLE="fork"/>
        <node TEXT="业务代码死循环： gdb attach ，不影响现场，但会导致进程卡住，不处理正常情况，影响线上，需要先sd down psm；" ID="e644e086dff9339f8f10c7ac1e97c0b9" STYLE="fork"/>
        <node TEXT="业务相关：计算量是否增大，如：召回数、粗排数、精排数、merge数目、过滤减少、filter/label op增多等；" ID="b9b4ff9a30183aabe2db2796fcbd8f91" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="check 服务器资源状态" ID="bb686d03689bed972d4b2ef42b6c3e38" STYLE="bubble" POSITION="right">
      <node TEXT="网络相关" ID="a92827040b0c39fe9c7f499b37821117" STYLE="fork">
        <node TEXT="tcp是否出现丢包、重传；" ID="cab2863291e540e5f3f4e3b9aa66fc5d" STYLE="fork"/>
        <node TEXT="网络带宽是否打满；" ID="be25a42796143739af0afc2634470948" STYLE="fork">
          <node TEXT="​2 BytePing网络问题追查工具​ " ID="bfe7fbf5276c7ee5436e977764f3f84e" STYLE="fork"/>
        </node>
        <node TEXT="网卡中断：软中断绑定CPU是否均衡、是否存在 CPU core瓶颈；" ID="7c19d53da21d5c7508e8ac58ca1a0406" STYLE="fork"/>
      </node>
      <node TEXT="CPU 配置 lscpu" ID="90901c17a740b0bff64bbdde4908c443" STYLE="fork">
        <node TEXT="Turbo boost ： 超频" ID="cfe971ed2e8e829be248bf5838ef5cab" STYLE="fork"/>
        <node TEXT="Performance Mode ： 节能模式" ID="d91aa647c6cb1fe971c862217d497454" STYLE="fork"/>
        <node TEXT="HT(hyper-Threading) :  超线程" ID="fa2af18dc93e2a034b80cfb28a46a18e" STYLE="fork"/>
        <node TEXT="numa绑定相关" ID="3ef55a2c11e4fe066cd157f8c39df4e2" STYLE="fork">
          <node TEXT="​1 numa相关问题追查​ " ID="140b875a8e97a48cd1c9526068ff6090" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="文件系统" ID="07dac37dd9780383f0724c81996dae3f" STYLE="fork">
        <node TEXT="内存文件系统" ID="5e4d7e7bd746b81f727831bf3220743c" STYLE="fork">
          <node TEXT="tmpfs 或 /dev/shm 是否满了" ID="a3a752f066a9df0d4195f78b189c67bd" STYLE="fork">
            <node TEXT="https://fatal.bytedance.net/incident/view/20390" ID="9118a6bafdf0b17385327c65fb3f3e5b" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="磁盘" ID="c48ca623d931d2026e01a69f845f4993" STYLE="fork">
          <node TEXT="df 磁盘介质类型，node 数量" ID="2a652e2b47ba151d062bf121f73f261f" STYLE="fork">
            <node TEXT="​4 常用命令​ " ID="6affe0e478ec3b199a5fe830121a73f5" STYLE="fork"/>
          </node>
          <node TEXT="iostat 磁盘读写带宽占用率" ID="a5fdca9867c292ede1e0cafb0817fafd" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="内存占用和分配" ID="fa6cbc50fe913fa055f7d003a52c4c68" STYLE="fork">
        <node TEXT="buddyinfo 内存碎片情况" ID="cc1e747a87ba958bf500f228b88aef8b" STYLE="fork"/>
        <node TEXT="内存带宽利用率，channel 是否打满" ID="811badd7d748031325e2d8573094c20d" STYLE="fork"/>
        <node TEXT="TLB 开销，开启系统透明大页？" ID="359545039de75f1538210dfdddedfab2" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="socket连接问题" ID="a37904451f83c592f3bb807d3cc43d69" STYLE="bubble" POSITION="right">
      <node TEXT="fd是否太多， 如： too many open files" ID="8bc0890087f714448d348a3fa094dee9" STYLE="fork">
        <node TEXT="命令：netstat or ss or lsof" ID="1dc9aff41172bccc71b79d5786661511" STYLE="fork"/>
        <node TEXT="fd泄漏" ID="05034b99d63e38af15a98316e77c2462" STYLE="fork">
          <node TEXT="代码bug；" ID="adab647b61a41d48ae9573ad417d44bc" STYLE="fork"/>
          <node TEXT="丢fin包：主动close socket端看不到connection n is，但对端还能看到此connection；" ID="79d9e3a410512536238e63f7a710d058" STYLE="fork"/>
        </node>
        <node TEXT="time wait，短连接太多？" ID="1abd5d70cee3f0ea86cb062e38d5e77a" STYLE="fork"/>
        <node TEXT="close wait， 被动关闭方 CPU or IO太忙？" ID="5c426bfe11d841dc00d9623c2e8d72cb" STYLE="fork"/>
      </node>
      <node TEXT="Sorter backlog是否打满；" ID="17af2017e0d1185484c8b7197d3f279d" STYLE="fork">
        <node TEXT="命令： ss -nlp | grep $port" ID="df72fd6f648188acb33bf253c5a586ce" STYLE="fork"/>
      </node>
    </node>
  </node>
</map>