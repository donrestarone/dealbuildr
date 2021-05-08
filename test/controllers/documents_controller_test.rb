require "test_helper"

class DocumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @document = documents(:one)
  end

  test "should get index" do
    get documents_url
    assert_response :success
  end

  test "should get new" do
    get new_document_url
    assert_response :success
  end

  test "should create document" do
    assert_difference('Document.count') do
      post documents_url, params: { document: { title: @document.title } }
    end

    assert_redirected_to document_url(Document.last)
  end

  test "should create document with content blocks" do
    payload = {
      document: { 
        title: @document.title,
        content_blocks_attributes: {
          "#{rand(1..10)}": {
            content: '<h2>Hello world</h2>' 
          }
        }
      }
    }
    assert_difference('Document.count') do
      assert_difference "ContentBlock.all.size", +1 do
        post documents_url, params: payload
      end
    end
    assert_redirected_to document_url(Document.last)
  end

  test "should show document" do
    get document_url(@document)
    assert_response :success
  end

  test "should get edit" do
    get edit_document_url(@document)
    assert_response :success
  end

  test "should update document" do
    patch document_url(@document), params: { document: { title: @document.title } }
    assert_redirected_to document_url(@document)
  end

  test "should update document with content blocks" do
    payload = {
      document: { 
        title: @document.title,
        content_blocks_attributes: {
          "#{rand(1..10)}": {
            content: '<h2>Hello world</h2>' 
          }
        }
      }
    }
    assert_no_difference('Document.count') do
      assert_difference "@document.content_blocks.all.size", +1 do
        patch document_url(@document), params: payload
      end
    end
    assert_redirected_to document_url(Document.last)
  end

  test "should destroy document" do
    assert_difference('Document.count', -1) do
      delete document_url(@document)
    end

    assert_redirected_to documents_url
  end
end
