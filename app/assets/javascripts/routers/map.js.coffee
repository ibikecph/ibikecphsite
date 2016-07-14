class IBikeCPH.Routers.Map extends Backbone.Router

  routes:
    '': 'index'
    '!/*path': 'handle_legacy_route_link'

  initialize: ->
    #TODO
    #@search.waypoints.on 'from:change:address to:change:address reset', ->
    #  if _gaq? and not app.map.dragging_pin
    #    {from, to} = app.info.waypoints.get_from_and_to()
      #
    #    from = from.get 'address' if from
    #    to   = to.get   'address' if to
    #
    #    _gaq.push ['_trackEvent', 'location', 'from', from] if from
    #    _gaq.push ['_trackEvent', 'location', 'to'  , to  ] if to
    #    _gaq.push ['_trackEvent', 'location', 'route', "#{from} -- #{to}"] if from and to
        
    @search = new IBikeCPH.Models.Search
    @map = new IBikeCPH.Views.Map model: @search, el: '#map', router: this
    @sidebar = new IBikeCPH.Views.Sidebar model: @search, el: '#search', router: this
    @summary = new IBikeCPH.Views.Summary model: @search.summary, el: '#summary', router: this
    @instructions = new IBikeCPH.Views.Instructions collection: @search.instructions, el: '#instructions_div'

  index: ->
    @sidebar.render(@map)
    
  handle_legacy_route_link: (path) ->
    @search.set_profile_from_legacy_url path
    @search.waypoints.reset_from_url path
    @sidebar.render(@map)
    @map.go_to_route()
      
    