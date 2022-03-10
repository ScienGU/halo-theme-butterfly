<header class="header">
    <@menuTag method="tree"><#assign menuList=menus></@menuTag>
    <@postTag method="count"> <#assign postCount=count> </@postTag>
    <@tagTag method="count"> <#assign tagCount=count> </@tagTag>
    <@commentTag method="count"> <#assign commentCount=count> </@commentTag>

    <div class="header__box">
        <a title="${blog_title!}" class="site_name" href="${blog_url!}">${blog_title!}</a>
        <nav class="header__nav">
            <@menuTag method="tree">
                <#list menuList?sort_by('priority') as menu>
                    <#if menu.children?? && menu.children?size gt 0>
                        <div class="dropdown ">
                            <a href="javascript:" target="${menu.target!}" title="${menu.name}"
                               class="item ">
                                <#if  menu.icon?? && menu.icon!=''>
                                    <i class="${menu.icon}"></i>
                                </#if>
                                <span>${menu.name}</span>
                                <i class="by-font by_icon_arrow-down"></i>
                            </a>
                            <nav class="dropdown_menu">
                                <#list menu.children as child>
                                    <a href="${child.url}" target="${child.target!}" title="${child.name}"
                                       class="dropdown_menu_item">
                                        <#if  child.icon?? && child.icon!=''>
                                            <i class="${child.icon}"></i>
                                        </#if>
                                        <span>${child.name}</span>
                                    </a>
                                </#list>
                            </nav>
                        </div>
                    <#else>
                        <a href="${menu.url}" target="${menu.target!}" title="${menu.name}"
                           class="item ">
                            <#if  menu.icon?? && menu.icon!=''>
                                <i class="${menu.icon}"></i>
                            </#if>
                            <span>${menu.name}</span>
                        </a>
                    </#if>
                </#list>
            </@menuTag>
        </nav>
        <div class="header__action">
            <a href="javascript:" class="search item"><i class="by-font by_icon_sousuo2"></i><span>搜索</span></a>
            <a href="javascript:" class="toggle item"><i class="by-font by_icon_sangang"></i></a>
        </div>
    </div>

    <#if is_index??>
        <div class="header__site">
            <h1 class="site_title">${blog_title!}</h1>
            <div class="site_subtitle">
                <span class="subtitle"></span>
            </div>
            <div class="site_icons">
                <a href="" class="ic_link" title="github">
                    <svg t="1646319571226" class="icon" viewBox="0 0 1024 1024" version="1.1"
                         xmlns="http://www.w3.org/2000/svg" p-id="11339" width="200" height="200">
                        <path d="M54.857143 512c0 201.984 130.980571 373.321143 312.630857 433.773714 22.857143 4.205714 31.213714-9.910857 31.213714-22.034285 0-10.843429-0.402286-39.606857-0.621714-77.732572-127.158857 27.611429-153.984-61.293714-153.984-61.293714-20.809143-52.827429-50.779429-66.889143-50.779429-66.889143-41.508571-28.342857 3.145143-27.776 3.145143-27.776 45.897143 3.236571 70.034286 47.122286 70.034286 47.122286 40.777143 69.851429 106.989714 49.664 133.046857 37.961143 4.150857-29.513143 15.963429-49.664 29.001143-61.074286-101.485714-11.538286-208.219429-50.779429-208.219429-225.956572 0-49.901714 17.810286-90.733714 47.067429-122.660571-4.717714-11.556571-20.406857-58.057143 4.48-120.978286 0 0 38.363429-12.306286 125.696 46.866286 36.461714-10.166857 75.574857-15.213714 114.450286-15.414857 38.838857 0.182857 77.933714 5.248 114.432 15.414857 87.277714-59.172571 125.586286-46.866286 125.586285-46.866286 24.96 62.902857 9.270857 109.421714 4.571429 120.978286 29.312 31.926857 46.994286 72.777143 46.994286 122.660571 0 175.634286-106.898286 214.272-208.713143 225.572572 16.384 14.116571 31.012571 42.020571 31.012571 84.662857 0 61.110857-0.566857 110.409143-0.566857 125.403429 0 12.233143 8.246857 26.459429 31.433143 21.997714C838.290286 885.156571 969.142857 713.929143 969.142857 512 969.142857 259.547429 764.452571 54.857143 511.963429 54.857143 259.547429 54.857143 54.857143 259.529143 54.857143 512z"
                              fill="#EEEEEE" p-id="11340"></path>
                    </svg>
                </a>
                <a href="" class="ic_link" title="QQ">
                    <svg t="1646466614091" class="icon" viewBox="0 0 1024 1024" version="1.1"
                         xmlns="http://www.w3.org/2000/svg" p-id="2126" width="200" height="200">
                        <path d="M934.95036 655.200446 932.655084 638.959553 929.779593 623.13003 927.502737 615.029538 925.299559 606.368274 922.330948 598.117356 919.343917 588.971046 915.889235 580.308759 912.139841 571.386552 905.420813 556.900629 899.50201 544.094976 893.547391 532.671809 888.394021 522.031471 882.478288 512.324388 878.072955 503.402181 868.888781 490.11148 857.258906 472.415446 854.608543 468.046952 853.694731 466.142579 853.694731 464.687438 855.633896 458.713376 858.323145 453.41265 860.63684 442.883853 861.963045 437.432701 861.963045 431.834192 862.634334 427.316296 862.634334 422.798399 861.963045 417.610236 861.198635 413.353282 859.480504 404.728858 857.258906 396.329561 855.242993 388.601552 852.10656 381.172349 848.522941 374.900505 845.724199 369.039008 842.568323 363.476315 837.696362 355.225397 835.867714 352.313068 835.343781 349.774245 833.048505 333.796342 831.629179 323.305407 829.947887 310.275649 827.373249 296.835546 823.323003 281.379529 821.026704 272.756127 819.234895 265.438465 816.660256 256.926604 813.821605 247.853971 810.985 239.491513 807.324634 230.456742 799.91385 213.021651 795.509541 204.771757 790.189372 195.326641 785.187451 187.18624 780.258185 178.00309 773.202489 169.528068 767.246847 161.27715 760.004909 152.765289 752.630964 145.038304 745.203808 137.570215 736.392118 129.842207 731.743238 127.043465 727.376791 123.196857 717.856973 116.439966 706.842105 109.085464 695.60518 102.477976 684.031587 96.467075 671.376359 91.015923 659.502937 85.826737 647.108652 81.309864 633.555985 77.57582 621.198539 74.253144 608.001983 71.341838 595.513554 68.280106 582.092893 66.823941 568.893266 65.219397 555.770388 63.501266 516.403798 63.501266 503.095701 64.24828 490.587829 66.002226 478.101447 67.720358 465.42473 69.847811 452.918905 72.275093 441.046506 75.1864 429.138292 79.031984 418.123424 82.914408 407.10958 86.61059 395.984195 92.061742 385.549541 96.467075 376.274294 101.805664 366.62247 107.778702 357.718683 114.013707 348.926436 121.069403 341.683475 127.603213 330.335009 138.354068 320.945151 148.359956 311.9288 158.068062 303.621601 167.923524 295.875173 178.00309 289.062 187.859575 282.453489 197.715037 279.39278 202.082508 276.555152 207.42212 270.358009 216.717833 265.448186 226.051409 261.079692 234.824213 257.291412 244.157789 253.575788 252.670673 250.458797 260.622786 247.620146 269.134647 244.747725 277.011035 240.903164 291.236014 238.101351 304.937061 236.532623 316.361251 234.984361 326.217736 234.984361 345.369935 232.297159 348.31808 229.813594 352.313068 227.889779 355.896686 226.228953 359.743294 224.138338 368.142591 221.861482 375.833761 221.057163 382.741078 220.537324 387.8177 220.537324 393.230989 215.253994 400.99686 211.50153 408.723845 208.663902 416.154072 206.554868 422.798399 204.950324 429.182806 203.381595 435.192683 203.381595 450.462458 204.278012 454.196503 205.584774 460.991256 207.226157 466.142579 204.278012 468.457298 196.006628 474.65444 185.051111 484.772892 178.294221 490.783793 171.740968 496.64529 167.224094 501.311567 163.491073 505.418095 155.500075 514.042519 147.904073 522.703783 141.948431 530.170848 134.837476 540.922726 128.024304 550.628786 121.341091 561.418526 115.630019 571.386552 110.961696 582.025866 105.958752 591.882352 102.318852 601.589434 98.47429 611.706863 95.618243 621.525486 92.800058 631.641891 90.334913 640.452557 88.915587 649.861858 87.404164 658.671501 86.080006 667.184385 85.296153 683.797761 85.296153 706.160071 86.080006 712.954825 88.17062 724.489532 88.915587 729.568201 90.334913 734.720547 92.015182 739.685629 93.603353 743.156684 96.121709 749.542114 98.083387 750.847853 99.277586 753.536079 100.77059 754.169505 102.318852 754.169505 108.909967 753.536079 115.630019 751.781108 121.341091 749.542114 127.257847 745.659691 132.671137 742.03821 137.58096 737.408773 142.86429 732.517369 147.381164 727.439724 151.619698 721.69079 155.500075 716.539466 159.123602 712.283536 161.419901 707.35427 165.843654 699.215916 167.224094 695.931103 168.007947 693.91519 168.381453 691.63731 169.444669 689.770799 170.211125 689.398316 171.740968 688.576601 172.656827 688.576601 173.046706 689.398316 173.814186 689.398316 174.578596 689.770799 177.080579 700.860369 179.730942 709.74369 183.370843 719.077266 186.992323 727.439724 190.054055 735.840044 194.756147 743.156684 198.229249 750.847853 202.074833 757.904573 206.554868 764.027014 209.952244 769.888512 218.985991 780.789793 226.864426 790.534737 234.424612 798.076504 241.945913 804.870234 248.405021 810.17096 258.092661 818.833247 261.956665 820.699758 263.264451 822.565245 263.264451 823.461661 262.368034 824.283376 261.956665 824.283376 260.034896 824.954665 252.774539 825.478598 246.054487 826.410829 240.380254 827.195705 234.424612 828.538283 229.272265 830.145897 224.138338 831.714625 219.621465 834.138838 216.018404 836.378855 211.50153 837.871859 208.663902 840.22444 205.584774 842.128813 202.316334 844.780199 198.229249 849.931522 196.642101 852.357781 194.756147 854.486258 192.162066 859.93741 190.725344 864.454284 189.008236 868.971158 188.654172 872.967168 188.654172 880.43321 187.906136 884.128369 187.906136 887.900276 186.992323 891.632273 186.992323 894.917086 187.906136 898.501728 188.654172 901.713886 190.725344 907.948891 192.162066 910.897036 193.991738 913.807319 196.006628 916.722718 198.229249 919.297356 201.158974 922.171824 203.381595 924.561243 209.952244 929.527348 216.54029 933.632853 224.138338 937.365874 232.297159 940.688549 240.903164 944.274214 250.458797 946.55107 260.034896 949.724343 270.358009 951.888636 280.64326 953.456341 291.226293 955.062931 302.184879 956.630636 323.801199 958.946378 346.088808 959.318862 385.549541 959.318862 395.200342 958.946378 403.508565 957.974237 411.459654 957.300902 418.983002 956.630636 430.964894 954.241216 439.647647 951.888636 447.879122 949.724343 463.072149 943.338912 469.942627 940.688549 476.550115 937.365874 487.378741 931.243433 497.176898 926.31519 504.40144 921.648914 509.683746 916.722718 517.972527 917.655973 524.37433 918.364101 537.030581 919.297356 547.989167 919.297356 551.870568 920.080186 555.770388 921.648914 561.968553 923.963633 568.893266 926.31519 582.092893 930.422741 595.513554 935.387823 608.654852 939.232384 621.834013 941.883771 635.349841 945.355849 649.311831 947.334923 662.545226 948.827927 675.892209 950.693414 688.286494 951.888636 701.597661 952.673511 738.464313 952.673511 750.372527 951.216323 761.965563 950.693414 773.202489 948.827927 783.526625 946.55107 793.829272 944.274214 803.759435 941.883771 807.848567 940.688549 812.421722 939.232384 821.026704 935.760307 828.697407 932.214551 835.867714 928.48153 842.568323 924.561243 848.522941 920.080186 850.875522 917.655973 853.694731 914.370137 857.258906 909.963781 861.198635 904.512628 862.634334 901.713886 863.269807 899.434983 864.894817 896.523677 865.566106 893.313565 865.566106 890.252857 866.350982 887.227963 865.566106 882.672204 864.894817 878.827643 863.269807 874.311793 861.963045 870.575702 859.480504 866.058828 856.568175 861.953324 853.694731 858.369705 849.8471 855.269088 841.93285 848.363817 833.048505 841.717444 824.106856 836.378855 814.716998 830.92975 793.15696 820.288388 788.005636 817.116139 786.605753 815.622112 785.689894 814.688857 796.03245 804.198945 800.5483 799.008736 804.264948 794.228873 811.50791 783.702122 818.337455 772.912381 824.106856 763.355725 829.613266 754.169505 836.893067 735.840044 842.568323 720.532407 846.358649 709.74369 848.522941 706.160071 849.8471 703.247742 852.10656 701.493795 853.022419 701.493795 853.694731 701.866279 859.219561 712.954825 864.1652 723.595162 867.637278 729.568201 871.240339 734.720547 874.805538 741.141794 879.38074 747.376799 883.242697 751.781108 885.558439 754.169505 887.871111 756.299005 889.982192 757.904573 891.997082 759.3986 896.383996 761.637594 898.718157 762.42247 902.301775 762.42247 904.653333 761.637594 907.528823 760.181429 910.737912 758.688425 913.390321 756.299005 915.889235 753.536079 918.708444 750.064001 920.892179 747.376799 923.394163 743.156684 925.299559 739.685629 927.502737 734.720547 928.677493 730.612996 931.887604 720.532407 933.960823 709.370183 935.453826 696.975898 936.499645 689.770799 936.499645 669.572782Z"
                              p-id="2127" fill="#EEEEEE"></path>
                    </svg>
                </a>
                <a href="" class="ic_link" title="知乎">
                    <svg t="1646319889132" class="icon" viewBox="0 0 1024 1024" version="1.1"
                         xmlns="http://www.w3.org/2000/svg" p-id="12604" width="200" height="200">
                        <path d="M512 64C264.6 64 64 264.6 64 512s200.6 448 448 448 448-200.6 448-448S759.4 64 512 64z m-90.7 477.8l-0.1 1.5c-1.5 20.4-6.3 43.9-12.9 67.6l24-18.1 71 80.7c9.2 33-3.3 63.1-3.3 63.1l-95.7-111.9v-0.1c-8.9 29-20.1 57.3-33.3 84.7-22.6 45.7-55.2 54.7-89.5 57.7-34.4 3-23.3-5.3-23.3-5.3 68-55.5 78-87.8 96.8-123.1 11.9-22.3 20.4-64.3 25.3-96.8H264.1s4.8-31.2 19.2-41.7h101.6c0.6-15.3-1.3-102.8-2-131.4h-49.4c-9.2 45-41 56.7-48.1 60.1-7 3.4-23.6 7.1-21.1 0 2.6-7.1 27-46.2 43.2-110.7 16.3-64.6 63.9-62 63.9-62-12.8 22.5-22.4 73.6-22.4 73.6h159.7c10.1 0 10.6 39 10.6 39h-90.8c-0.7 22.7-2.8 83.8-5 131.4H519s12.2 15.4 12.2 41.7H421.3z m346.5 167h-87.6l-69.5 46.6-16.4-46.6h-40.1V321.5h213.6v387.3zM408.2 611s0-0.1 0 0z m216 94.3l56.8-38.1h45.6-0.1V364.7H596.7v302.5h14.1z"
                              p-id="12605" fill="#EEEEEE"></path>
                    </svg>
                </a>
                <a href="" class="ic_link" title="邮箱">
                    <svg t="1646319922974" class="icon" viewBox="0 0 1024 1024" version="1.1"
                         xmlns="http://www.w3.org/2000/svg" p-id="13585" width="200" height="200">
                        <path d="M149.6 171.8h691.9c47.2 0 85.9 37.7 86.5 83.9L495.7 493 63.5 256c0.4-46.4 38.8-84.2 86.1-84.2z m-86.1 175l-0.4 419.6c0 46.7 38.9 84.9 86.5 84.9h691.9c47.6 0 86.5-38.2 86.5-84.9V346.6L505.9 572.8c-6.5 3.5-14.3 3.5-20.7 0l-421.7-226z"
                              p-id="13586" fill="#EEEEEE"></path>
                    </svg>
                </a>
            </div>
        </div>
        <div class="header__down">
            <svg t="1646466983566" class="icon" viewBox="0 0 1026 1024" version="1.1"
                 xmlns="http://www.w3.org/2000/svg"
                 p-id="3026" width="200" height="200">
                <path d="M857.088 224.256q28.672-28.672 69.12-28.672t69.12 28.672q29.696 28.672 29.696 68.608t-29.696 68.608l-382.976 380.928q-12.288 14.336-30.72 19.968t-38.912 4.608-40.448-8.704-34.304-22.016l-376.832-374.784q-29.696-28.672-29.696-68.608t29.696-68.608q14.336-14.336 32.256-21.504t36.864-7.168 37.376 7.168 32.768 21.504l313.344 309.248z"
                      p-id="3027" fill="#EEEEEE"></path>
            </svg>
        </div>
    </#if >

    <div class="header__sidebar">
        <img class="blog_avatar" src="${user.avatar!}" alt="${user.description!}">
        <div class="blog_data ">
            <a class="data_item" title="文章" href="${archives_url!}">
                <div class="headline">文章</div>
                <div class="length-num nowrap">${postCount!0}</div>
            </a>
            <a href="${tags_url!}" title="标签" class="data_item">
                <div class="headline">标签</div>
                <div class="length-num nowrap">${tagCount!0}</div>
            </a>
            <a class="data_item" title="评论" href="javascript:">
                <div class="headline ">评论</div>
                <div class="length-num nowrap">${commentCount!0}</div>
            </a>
        </div>
        <hr/>
        <nav class="blog_menu">
            <#list menuList?sort_by('priority') as menu>
                <#if menu.children?? && menu.children?size gt 0>
                    <div class="menu_item nowrap">
                        <a href="javascript:">
                            <#if  menu.icon?? && menu.icon!=''><i class="${menu.icon}"></i></#if>
                            ${menu.name}
                            <i class="by-font by_icon_arrow-right"></i>
                        </a>

                        <div class="child flex">
                            <#list menu.children as child>
                                <a href="${child.url}" target="${child.target!}" title="${child.name}"
                                   class="child_item menu_item">
                                    <#if  child.icon?? && child.icon!=''>
                                        <i class="${child.icon}"></i>
                                    </#if>
                                    <span>${child.name}</span>
                                </a>
                            </#list>
                        </div>
                    </div>
                <#else>
                    <a href="${menu.url}" target="${menu.target!}" title="${menu.name}" class="menu_item nowrap">
                        <#if  menu.icon?? && menu.icon!=''><i class="${menu.icon}"></i></#if>
                        ${menu.name}
                    </a>
                </#if>
            </#list>
        </nav>
    </div>
    <div class="header__search">
        <nav class="search_nav">
            <span class="n_title">文章搜索</span>
            <button class="n_close">
                <i class="by-font by_icon_cuowu"></i>
            </button>
        </nav>
        <form class="search" method="get" action="${blog_url!}/search">
            <label>
                <input maxlength="16" name="keyword" class="search_input" placeholder="请输入搜索关键字..." type="text"/>
            </label>
        </form>
        <hr>
    </div>
    <div class="header__mask"></div>
</header>
