export const state = () => ({
  idMenu: ''
})

export const getters = {
  getIdMenu: state => {
    return state.idMenu
  }

}

export const mutations = {

  SET_ID_MENU: (state, data) => {
    state.idMenu = data
  }

}

export const actions = {

}

export default {
  state,
  mutations,
  getters,
  actions
}
