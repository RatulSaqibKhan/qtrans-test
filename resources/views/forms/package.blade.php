@extends('layout')

@section('content')

<!-- Hero section -->
<section class="hero-section">
  <div class="hero-slider owl-carousel">
    <div class="hs-item set-bg" data-setbg="{{ asset('images/banner.jpg') }}">
      <div class="hs-text">
        <div class="container-fluid">
          <div class="container">
            <div class="row">
              <div class="col-lg-12">
                <div class="hs-text-items">
                  <h2 class="hs-heading">Qtrans</h2>
                  <p class="hs-des">Languages Services</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="hs-item set-bg" data-setbg="{{ asset('images/banner-2.jpg') }}">
      <div class="hs-text">
        <div class="container-fluid">
          <div class="container">
            <div class="row">
              <div class="col-lg-12">
                <div class="hs-text-items">
                  <h2 class="hs-heading">Qtrans</h2>
                  <p class="hs-des">Language Market</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Hero section end -->
<!-- Form section start -->
<section class="pt-4 pb-4">
  <div class="row mb-1">
    <div class="col-md-12 text-center">
      <h5><strong>Packages</strong> | Create Package</h5>
    </div>
  </div>
  {!! Form::open(['url' => url('/packages'), 'method' => 'POST', 'autocomplete' => 'off']) !!}
  <div class="row mt-4">
    <div class="container">
      <div class="col-12 border-light border p-5">
        @include('includes.flash_message')
        <div class="row">
          <div class="col-6">
            <div class="row">
              <div class="form-group col-md-6">
                <h5 class="font-weight-600">Package Type:</h5>
                @foreach(PACKAGES_TYPES as $key => $type)
                {!! Form::radio('package_type', $key, $key == 1 ? true : false) !!} <span>{{ $type }}</span> <br>
                @endforeach
                @if($errors->has('package_type'))
                <span class="text-danger">{{ $errors->first('package_type') }}</span>
                @endif
              </div>
              <div class="form-group col-md-6">
                <h5 class="font-weight-600">Field of Text:</h5>
                @foreach(FIELD_OF_TEXTS as $key => $text)
                {!! Form::radio('field_of_text', $key, $key == 1 ? true : false) !!} <span>{{ $text }}</span> <br>
                @endforeach
                @if($errors->has('field_of_text'))
                <span class="text-danger">{{ $errors->first('field_of_text') }}</span>
                @endif
              </div>
            </div>
          </div>
          <div class="col-6">
            <div class="row language-section">
              <div class="form-group col-md-6 single-language-selction-section">
                {!! Form::select('language_id[]', $languages ?? ['1' => 'arabic', '2' => 'english', '3' => 'german'], null, ['class' => 'form-control', 'placeholder' =>
                'Select one', 'required' => true]) !!}
              </div>
              <div class="form-group col-md-6" id="add-more-language-btn-section">
                <button type="button" class="btn btn-primary form-control"><i
                    class="fa fa-plus"></i>&nbsp;Add More</button>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="form-group col-md-6">
            {!! Form::number('number_of_words', null, ['class' => 'form-control', 'placeholder' => 'Number of words', 'required' => true]) !!}
            @if($errors->has('number_of_words'))
            <span class="text-danger">{{ $errors->first('number_of_words') }}</span>
            @endif
          </div>
          <div class="form-group col-md-6 flex flex-row justify-center align-items-center">
            <h5 class="font-weight-600">Is Complementary:</h5>
            <div class="pl-3 pr-3">
              {!! Form::radio('is_complementary', 1, true) !!} <span>Yes</span> &nbsp;
            </div>
            <div>
              {!! Form::radio('is_complementary', 0) !!} <span>No</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="form-group col-md-6">
            {!! Form::text('duration', null, ['class' => 'form-control', 'placeholder' => 'Type Duration', 'required' => true]) !!}
            @if($errors->has('duration'))
            <span class="text-danger">{{ $errors->first('duration') }}</span>
            @endif
          </div>
          <div class="form-group col-md-6">
            {!! Form::text('name', null, ['class' => 'form-control', 'placeholder' => 'Type Name', 'required' => true]) !!}
            @if($errors->has('name'))
            <span class="text-danger">{{ $errors->first('name') }}</span>
            @endif
          </div>
        </div>
        <div class="row">
          <div class="form-group col-md-6">
            {!! Form::text('discount', null, ['class' => 'form-control', 'placeholder' => 'Discount', 'required' => true]) !!}
            @if($errors->has('discount'))
            <span class="text-danger">{{ $errors->first('discount') }}</span>
            @endif
          </div>
          <div class="form-group col-md-6">
            {!! Form::email('email', null, ['class' => 'form-control', 'placeholder' => 'Email', 'required' => true]) !!}
            @if($errors->has('email'))
            <span class="text-danger">{{ $errors->first('email') }}</span>
            @endif
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row mt-4">
    <div class="container">
      <div class="col-12">
        <div class="text-center">
          <button class="btn btn-primary" type="submit">Calculate</button>
          <button class="btn btn-primary" type="button" id="reset-btn">Reset</button>
      </div>
      </div>
    </div>
  </div>
  {!! Form::close() !!}
</section>
<!-- Form section end -->

@endsection
@section('script')
  <script type="text/javascript" src="{{ asset('js/package.js') }}"></script>
@endsection