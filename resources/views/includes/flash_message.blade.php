<div class="notification-message">
  @foreach (['danger', 'warning', 'success', 'info'] as $msg)
      @if(Session::has($msg))
          <div class="alert alert-{{ $msg }} alert-dismissible">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
              <h5 class="text-info text-center">
                  @if($msg == 'success')
                      <i class="fa fa-check"></i> {{ Session::get($msg) }}
                  @else
                      <i class="fa fa-warning"></i> {{ Session::get($msg) }}
                  @endif
              </h5>
          </div>
      @endif
  @endforeach
</div>