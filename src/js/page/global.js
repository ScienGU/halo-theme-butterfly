/**
 * @Description: 全局
 * @author: 小红
 * @date: 2022/12/6
 * @fileName: globals
 */

import useEvent from "../modules/event";


class Global {
  constructor() {
    this.event = new useEvent();

    this.adsorption();
  }

  get theme() {
    return localStorage.getItem('butterfly-theme');
  }

  // 吸附小部件
  adsorption() {

    // 主题模式切换
    $('.adsorption .switch-model').on('click', () => {

      if (this.theme === 'light') {
        $('html').attr('data-theme', 'dark');
        localStorage.setItem('butterfly-theme', 'dark');
      } else {
        $('html').attr('data-theme', 'light');
        localStorage.setItem('butterfly-theme', 'light');
      }

    });


  }

}

document.addEventListener("DOMContentLoaded", () => window.GlobalClass = new Global())
